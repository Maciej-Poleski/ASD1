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
#include <iomanip>

namespace
{
using namespace Wrapper;

struct Edge
{
    uint32_t d; /// wierzchołek docelowy
    uint32_t c; /// koszt
    int32_t p;  /// względne przesunięcie krawędzi
};

struct Vertex
{
    uint32_t w; /// współrzędna
    uint32_t c; /// minimalny koszt
    int32_t p;  /// przesunięcie realizujące minimalny koszt
    bool ready; /// ten wierzchołek ma już obliczony ostateczny koszt
    std::vector<Edge> edges;
};

struct Info
{
    uint32_t c; /// koszt
    uint32_t v; /// wierzchołek docelowy
};

static bool operator<(const Info &lhs,const Info &rhs)
{
    return lhs.c>rhs.c || (lhs.c==rhs.c && lhs.v>rhs.v);
}

static Vertex *G;
static uint_fast32_t n,m;

static int32_t shiftRight(uint32_t from,uint32_t to) __attribute__((pure));
static int32_t shiftRight(uint32_t from,uint32_t to)
{
    if(G[to].w>G[from].w)
        return G[to].w-G[from].w;
    return 1296000-G[from].w+G[to].w;

}

static int32_t shiftLeft(uint32_t from,uint32_t to) __attribute__((pure));
static int32_t shiftLeft(uint32_t from,uint32_t to)
{
    if(G[to].w<G[from].w)
        return G[to].w-G[from].w;
    return -(G[from].w+1296000-G[to].w);
}

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        in>>n>>m;
        G=new Vertex[n+1];
        for(size_t i=1; i<=n; ++i)
        {
            in>>G[i].w;
            if(G[i].w==1296000)
                G[i].w=0;
            G[i].c=std::numeric_limits<uint32_t>::max();
            G[i].ready=false;
        }
        for(size_t i=0; i<m; ++i)
        {
            uint32_t a,b,x;
            int k;
            in>>a>>b>>x>>k;
            G[a].edges.push_back( {b,x,k==1?shiftRight(a,b):shiftLeft(a,b)});
            G[b].edges.push_back( {a,x,-(k==1?shiftRight(a,b):shiftLeft(a,b))});
        }
        std::priority_queue<Info> queue;
        queue.push( {0,1});
        G[1].c=G[1].p=0;
        int32_t ans=std::numeric_limits< int32_t>::max();
        while(!queue.empty())
        {
            Info info=queue.top();
            queue.pop();
            if(G[info.v].ready)
                continue;
            G[info.v].ready=true;
            for(std::vector<Edge>::const_iterator i=G[info.v].edges.begin(),e=G[info.v].edges.end(); i!=e; ++i)
            {
                if(G[i->d].ready)
                {
                    if(G[info.v].p+i->p!=G[i->d].p)
                        ans=std::min(ans,static_cast<int32_t>(G[info.v].c+i->c+G[i->d].c));
                }
                else
                {
                    if(G[i->d].c>info.c+i->c)
                    {
                        G[i->d].c=info.c+i->c;
                        G[i->d].p=G[info.v].p+i->p;
                        queue.push( {G[i->d].c,i->d});
                    }
                }
            }
        }
        out<<((ans!=std::numeric_limits< int32_t>::max())?ans:-1)<<'\n';
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
