//Maciej Poleski
#ifdef DEBUG
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cassert>
namespace
{
namespace Wrapper
{
std::ifstream in;
std::ofstream out;
}
void init(int argc, char** argv)
{
    if(argc != 3)
    {
        std::cerr << "Potrzeba dokładnie dwóch argumentów\n";
        std::abort();
    }
    Wrapper::in.open(argv[1]);
    Wrapper::out.open(argv[2]);
}
}
#define check(x) assert(x)
#else
#ifndef NDEBUG
#define NDEBUG
#endif
#define check(x)
#include <iostream>
namespace
{
namespace Wrapper
{
std::istream& in = std::cin;
std::ostream& out = std::cout;
}
}
#endif

#include <tr1/cstdint>

namespace
{
namespace Wrapper
{
typedef std::tr1::uint_fast64_t uint_fast64_t;
typedef std::tr1::uint_fast32_t uint_fast32_t;
typedef std::tr1::uint_fast16_t uint_fast16_t;
typedef std::tr1::uint_fast8_t uint_fast8_t;

typedef std::tr1::uint64_t uint64_t;
typedef std::tr1::uint32_t uint32_t;
typedef std::tr1::uint16_t uint16_t;
typedef std::tr1::uint8_t uint8_t;

typedef std::tr1::int_fast64_t int_fast64_t;
typedef std::tr1::int_fast32_t int_fast32_t;
typedef std::tr1::int_fast16_t int_fast16_t;
typedef std::tr1::int_fast8_t int_fast8_t;

typedef std::tr1::int64_t int64_t;
typedef std::tr1::int32_t int32_t;
typedef std::tr1::int16_t int16_t;
typedef std::tr1::int8_t int8_t;

typedef std::size_t size_t;
}

}

#include <string>
#include <algorithm>
#include <limits>
#include <locale>
#include <cstring>
#include <utility>
#include <cstdlib>
#include <tr1/random>
#include <algorithm>
#include <vector>
#include <stack>
#include <queue>
#include <list>

namespace
{
using namespace Wrapper;

// Parzyste +, nieparzyste -

std::vector<uint32_t> *G;
std::vector<uint32_t> *H;
std::stack<uint32_t> stack;
uint32_t *CV;
uint8_t *SC;
bool *V;

void stage1(uint32_t v)
{
    if(V[v])
        return;
    V[v]=true;
    for(std::vector<uint32_t>::const_iterator i=G[v].begin(),e=G[v].end(); i!=e; ++i)
    {
        stage1(*i);
    }
    stack.push(v);
}

void stage2(uint32_t v,uint32_t c)
{
    if(V[v])
        return;
    V[v]=true;
    CV[v]=c;
    for(std::vector<uint32_t>::const_iterator i=H[v].begin(),e=H[v].end(); i!=e; ++i)
    {
        stage2(*i,c);
    }
}

void stage3(uint32_t v)
{
    if(V[v])
        return;
    V[v]=true;
    bool wantToSetSign=(SC[CV[v]]==2);
    if(wantToSetSign)
        SC[CV[v]]=3; // nikt nie podejmie się ustawienia znaku
    for(std::vector<uint32_t>::const_iterator i=G[v].begin(),e=G[v].end(); i!=e; ++i)
    {
        stage3(*i);
    }
    if(wantToSetSign && SC[CV[v]]==3) // chcemy ustawić i nikt nie zrobił tego za nas
    {
        SC[CV[v]]=1;
        SC[CV[(v%2==0)?v+1:v-1]]=0;
    }
}

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast32_t n,m;
        in>>n>>m;
        G=new std::vector<uint32_t>[(n+1)*2];
        H=new std::vector<uint32_t>[(n+1)*2];
        V=new bool[(n+1)*2];
        memset(V,0,(n+1)*2);
        while(m--)
        {
            int32_t a,b;
            in>>a>>b;
            if(a>0 && b>0)
            {
                G[2*a+1].push_back(2*b);
                G[2*b+1].push_back(2*a);
                H[2*b].push_back(2*a+1);
                H[2*a].push_back(2*b+1);
            }
            else if(a<0 && b>0)
            {
                a=-a;
                G[2*a].push_back(2*b);
                G[2*b+1].push_back(2*a+1);
                H[2*b].push_back(2*a);
                H[2*a+1].push_back(2*b+1);
            }
            else if(a>0 && b<0)
            {
                b=-b;
                G[2*a+1].push_back(2*b+1);
                G[2*b].push_back(2*a);
                H[2*b+1].push_back(2*a+1);
                H[2*a].push_back(2*b);
            }
            else
            {
                a=-a;
                b=-b;
                G[2*a].push_back(2*b+1);
                G[2*b].push_back(2*a+1);
                H[2*b+1].push_back(2*a);
                H[2*a+1].push_back(2*b);
            }
        }
        for(size_t v=2; v<(n+1)*2; ++v)
            stage1(v);
        memset(V,0,(n+1)*2);
        CV=new uint32_t[(n+1)*2];
        while(!stack.empty())
        {
            stage2(stack.top(),stack.top());
            stack.pop();
        }
        delete [] H;
        bool sat=true;
        for(size_t i=1; i<=n; ++i)
            if(CV[2*i]==CV[2*i+1])
            {
                sat=false;
                break;
            }
        if(sat)
        {
            out<<"TAK\n";
            SC=new uint8_t[(n+1)*2];
            for(size_t v=0; v<(n+1)*2; ++v)
                SC[v]=2;
            memset(V,0,(n+1)*2);
            for(size_t v=2; v<(n+1)*2; ++v)
                stage3(v);
            for(size_t i=1; i<=n; ++i)
            {
                out<<static_cast<uint_fast16_t>(SC[CV[i*2]])<<' ';
            }
            delete [] SC;
        }
        else
        {
            out<<"NIE\n";
        }
        delete [] V;
        delete [] G;
    }
}

} // namespace

int main(int argc, char** argv)
{
    std::ios_base::sync_with_stdio(false);
#ifdef DEBUG
    init(argc, argv);
#else
    (void)argc;
    (void)argv;
#endif
    solution();
    return 0;
}
