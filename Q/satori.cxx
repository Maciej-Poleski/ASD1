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

std::vector<uint32_t> *G;
std::vector<uint32_t> *H;
uint32_t *C;
uint32_t *M;
std::stack<uint32_t> stack;
bool *V;

void stage1(uint32_t v)
{
    if(V[v])
        return;
    V[v]=true;
    for(std::vector<uint32_t>::const_iterator i=G[v].begin(),e=G[v].end();i!=e;++i)
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
    C[v]=c;
    for(std::vector<uint32_t>::const_iterator i=H[v].begin(),e=H[v].end();i!=e;++i)
    {
        stage2(*i,c);
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
        uint_fast32_t n;
        in>>n;
        G=new std::vector<uint32_t>[n+1];
        H=new std::vector<uint32_t>[n+1];
        V=new bool[n+1];
        memset(V+1,0,n);
        for(size_t i=1;i<=n;++i)
        {
            uint_fast32_t c;
            in>>c;
            while(c--)
            {
                uint32_t v;
                in>>v;
                G[i].push_back(v);
                H[v].push_back(i);
            }
        }
        for(size_t i=1;i<=n;++i)
        {
            stage1(i);
        }
        memset(V+1,0,n);
        C=new uint32_t[n+1];
        while(!stack.empty())
        {
            stage2(stack.top(),stack.top());
            stack.pop();
        }
        for(size_t v=1;v<=n;++v)
        {
            for(std::vector<uint32_t>::const_iterator i=G[v].begin(),e=G[v].end();i!=e;++i)
            {
                if(C[v]!=C[*i])
                {
                    V[C[v]]=false;
                    break;
                }
            }
        }
        M=new uint32_t[n+1];
        for(size_t i=1;i<=n;++i)
            M[i]=0;
        for(size_t v=1;v<=n;++v)
        {
            ++M[C[v]];
        }
        M[0]=std::numeric_limits<uint32_t>::max();
        uint_fast32_t selectedColor=0;
        for(size_t c=1;c<=n;++c)
        {
            if(V[c] && (M[c]<M[selectedColor]) && (M[c]>0))
                selectedColor=c;
        }
        out<<M[selectedColor]<<'\n';
        for(size_t v=1;v<=n;++v)
        {
            if(C[v]==selectedColor)
                out<<v<<' ';
        }
        out<<'\n';
        delete [] M;
        delete [] V;
        delete [] C;
        delete [] H;
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
