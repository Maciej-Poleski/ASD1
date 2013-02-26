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

uint32_t G[200][200];

static uint32_t addWithInf(uint32_t a,uint32_t b) __attribute__((pure));

static uint32_t addWithInf(uint32_t a, uint32_t b)
{
    if(a==std::numeric_limits< uint32_t>::max() ||
            b==std::numeric_limits< uint32_t>::max())
        return std::numeric_limits<uint32_t>::max();
    return a+b;
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
        std::string *names=new std::string[n];
        for(size_t i=0; i<n; ++i)
            in>>names[i];
        for(size_t i=0; i<n; ++i)
            for(size_t j=0; j<n; ++j)
                G[i][j]=(i!=j? std::numeric_limits< uint32_t>::max():0);
        uint_fast32_t m;
        in>>m;
        for(size_t i=0; i<m; ++i)
        {
            std::string a,b;
            uint_fast32_t d;
            in>>a>>b>>d;
            uint_fast32_t A=std::find(names,names+n,a)-names;
            uint_fast32_t B=std::find(names,names+n,b)-names;
            G[A][B]=d;
            G[B][A]=d;
        }
        for(size_t k=0; k<n; ++k)
            for(size_t x=0; x<n; ++x)
                for(size_t y=0; y<n; ++y)
                    G[x][y]=std::min(G[x][y],addWithInf(G[x][k],G[k][y]));
        out<<std::setw(12)<<' ';
        for(size_t i=0;i<n;++i)
            out<<std::setw(12)<<names[i];
        out<<'\n';
        for(size_t i=0;i<n;++i)
        {
            out<<std::setw(12)<<names[i];
            for(size_t j=0;j<n;++j)
                out<<std::setw(12)<<G[i][j];
            out<<'\n';
        }
        delete [] names;
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
