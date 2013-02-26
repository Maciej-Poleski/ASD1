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

uint_fast32_t n,m,a,b;
std::vector<uint16_t> *G;
bool *V;
bool *OK;
uint16_t *pre;
uint16_t *low;
uint16_t counter;
uint16_t *A;
uint16_t *B;

void dfs(uint16_t v,uint16_t p)
{
    check(V[v]==false);
    pre[v]=counter++;
    low[v]=n;           // to nie jest prawdziwe low
    V[v]=true;
    for(std::vector<uint16_t>::const_iterator i=G[v].begin(),e=G[v].end(); i!=e; ++i)
    {
        if(*i==p)
            continue;
        if(!V[*i])      // drzewowa
        {
            dfs(*i,v);
            low[v]=std::min(low[v],low[*i]);
        }
        else            // powrotna
        {
            low[v]=std::min(low[v],pre[*i]);
        }
    }
}

void bfs(uint16_t v,uint16_t *T)
{
    std::queue<uint16_t> queue;
    memset(V+1,0,n);
    T[v]=0;
    V[v]=true;
    queue.push(v);
    while(!queue.empty())
    {
        v=queue.front();
        queue.pop();
        for(std::vector<uint16_t>::const_iterator i=G[v].begin(),e=G[v].end(); i!=e; ++i)
        {
            if(V[*i])
                continue;
            V[*i]=true;
            T[*i]=T[v]+1;
            queue.push(*i);
        }
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
        in>>n>>m>>a>>b;
        G=new std::vector<uint16_t>[n+1];
        V=new bool[n+1];
        pre=new uint16_t[n+1];
        low=new uint16_t[n+1];
        std::memset(V+1,0,n);
        for(size_t i=0; i<m; ++i)
        {
            uint16_t a,b;
            in>>a>>b;
            G[a].push_back(b);
            G[b].push_back(a);
        }
        counter=0;
        dfs(1,0);
        OK=new bool[n+1];
        for(size_t i=1; i<=n; ++i)
        {
            OK[i]=(low[i]<=pre[i]);
        }
        delete [] low;
        delete [] pre;
        A=new uint16_t[n+1];
        B=new uint16_t[n+1];
        bfs(a,A);
        bfs(b,B);
        bool ok=false;
        for(size_t i=1; i<=n; ++i)
            if(OK[i] && (A[i]<B[i])) {
                ok=true;
                break;
            }
        if(ok)
        {
            out<<"NIE\n";
        }
        else
        {
            uint16_t max=0;
            for(size_t i=1;i<=n;++i)
                if(A[i]<B[i])
                    max=std::max(max,B[i]);
            out<<max<<'\n';
        }
        delete [] B;
        delete [] A;
        delete [] OK;
        delete [] G;
        delete [] V;
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
