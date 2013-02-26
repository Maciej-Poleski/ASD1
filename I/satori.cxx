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

static bool W[1 << 16][16];
static bool G[16][16];
static uint_fast16_t n;

static void dump(uint16_t A, uint16_t k) __attribute__((optimize(3)));
static void dump(uint16_t A, uint16_t k)
{
    if(k == 0)
        return;
    for(size_t i = 0; i <= n; ++i)
        if(W[A ^(1 << k)][i] && G[i][k])
        {
            dump(A ^(1 << k), i);
            break;
        }
    out << k << ' ';
}

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast16_t m;
        in >> n >> m;
        for(size_t i = 0; i <= n; ++i)
            for(size_t j = 0; j <= n; ++j)
                G[i][j] = false;

        for(size_t i = 0; i < m; ++i)
        {
            uint_fast16_t a, b;
            in >> a >> b;
            G[a][b] = G[b][a] = true;
        }
        for(size_t i = 0; i < (1 << (n + 1)); ++i)
            for(size_t j = 0; j <= n; ++j)
                W[i][j] = false;

        W[1][0] = true;
        for(size_t A = 1; A < (1 << (n + 1)); ++A)
            for(size_t k = 1; k <= n; ++k)
            {
                for(size_t i = 0; i <= n; ++i)
                    if(W[A ^(1 << k)][i] && G[i][k])
                    {
                        W[A][k] = true;
                        break;
                    }
            }
        bool f = false;
        for(size_t i = 1; i <= n; ++i)
            if(W[(1 << (n + 1)) - 1][i] && G[i][0])
            {
                out << "TAK\n";
                f = true;
                dump((1 << (n + 1)) - 1, i);
                out<<'\n';
                break;
            }
        if(!f)
        {
            out << "NIE\n";
        }
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
