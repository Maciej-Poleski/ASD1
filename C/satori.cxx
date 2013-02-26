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

namespace
{
using namespace Wrapper;

typedef std::pair<int32_t, int32_t> Coord;

inline static uint_fast64_t dist(const Coord& A, const Coord& B)
__attribute__((pure, hot, optimize(3)));
inline static uint_fast64_t dist(const Coord& A, const Coord& B)
{
    return static_cast<uint_fast64_t>(
               static_cast<int_fast64_t>(A.first - B.first) *
               static_cast<int_fast64_t>(A.first - B.first) +
               static_cast<int_fast64_t>(A.second - B.second) *
               static_cast<int_fast64_t>(A.second - B.second));
}

static uint64_t T[200][200];
static uint16_t P[200][200];
static uint_fast16_t n;

static void dump(uint16_t i, uint16_t j)
{
    check(i != j);
    if((i + 1) % n == j)
        return;
    else
    {
        dump(i, P[i][j]);
        if((i + 1) % n != j && i != (j + 1) % n)
            out << ' ' << i << ' ' << j;
        dump(P[i][j], j);
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
        in >> n;
        std::pair<int32_t, int32_t> *COORD = new std::pair<int32_t, int32_t>[n];
        for(size_t i = 0; i < n; ++i)
            in >> COORD[i].first >> COORD[i].second;
        uint_fast64_t totalLength = 0;
        for(size_t i = 1; i < n; ++i)
        {
            T[i - 1][i] = dist(COORD[i - 1], COORD[i]);
            totalLength += T[i - 1][i];
        }
        T[n - 1][0] = dist(COORD[n - 1], COORD[0]);
        totalLength += T[n - 1][0];
        for(size_t incr = 2; incr < n; ++incr)
        {
            for(size_t i = 0; i < n; ++i)
            {
                size_t j = (i + incr) % n;
                T[i][j] = std::numeric_limits<uint64_t>::max();
                for(size_t k = (i + 1) % n; k != j; k = (k + 1) % n)
                {
                    if(T[i][k] + T[k][j] + dist(COORD[i], COORD[j]) < T[i][j])
                    {
                        T[i][j] = T[i][k] + T[k][j] + dist(COORD[i], COORD[j]);
                        P[i][j] = k;
                    }
                }
            }
        }
#ifdef DEBUG
        for(size_t i = 0; i < n; ++i)
            check(T[i][(i + n - 1) % n] == T[(i + 1) % n][(i + n) % n]);
#endif
        out << T[0][n - 1] - totalLength;
        dump(0, n - 1);
        out << '\n';
        delete [] COORD;
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
