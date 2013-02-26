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

namespace
{
using namespace Wrapper;

struct Vertex
{
    std::vector<uint32_t> edges;
    uint64_t O,E;
};

static Vertex *G;

static void stage1(uint32_t v,uint32_t p=0)
{
    G[v].E=0;
    for(std::vector<uint32_t>::const_iterator i=G[v].edges.begin(),e=G[v].edges.end();i!=e;++i)
    {
        if(*i!=p)
        {
            stage1(*i,v);
            G[v].O+=std::min(G[*i].O,G[*i].E);
            G[v].E+=G[*i].O;
        }
    }
}

static bool *V;

static void stage2(uint32_t v, bool o, uint32_t p=0)
{
    V[v]=o;
    for(std::vector<uint32_t>::const_iterator i=G[v].edges.begin(),e=G[v].edges.end();i!=e;++i)
    {
        if(*i!=p)
        {
            stage2(*i,o?G[*i].O<G[*i].E:true,v);
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
        uint_fast32_t n;
        in>>n;
        G=new Vertex[n+1];
        for(size_t i=1;i<=n;++i)
            in>>G[i].O;
        for(size_t i=1;i<n;++i)
        {
            uint32_t a,b;
            in>>a>>b;
            G[a].edges.push_back(b);
            G[b].edges.push_back(a);
        }
        stage1(1,0);
        out<<std::min(G[1].O,G[1].E)<<'\n';
        V=new bool[n+1];
        stage2(1,G[1].O<G[1].E);
        delete [] G;
        for(size_t i=1;i<=n;++i)
            out<<static_cast<uint_fast16_t>(V[i]);
        out<<'\n';
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
