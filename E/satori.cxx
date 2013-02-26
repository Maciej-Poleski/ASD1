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

static std::pair<uint32_t, uint32_t> T[2000][2000];

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast16_t n;
        in >> n;
        uint32_t* A = new uint32_t[n];
        for(size_t i = 0; i < n; ++i)
            in >> A[i];
        for(size_t i = 0; i < n; ++i)
        {
            size_t j = (i + 1) % n;
            T[i][j] = std::make_pair(std::max(A[i], A[j]),
                                     std::min(A[i], A[j]));
        }
        for(size_t incr = 2; incr < n; ++incr)
        {
            for(size_t i = 0; i < n; ++i)
            {
                size_t j = (i + incr) % n;
                T[i][j] = std::max(std::make_pair(A[i] + T[(i + 1) % n][j].second,
                                                  T[(i + 1) % n][j].first),
                                   std::make_pair(A[j] + T[i][(j - 1 + n) % n].second,
                                                  T[i][(j - 1 + n) % n].first));
            }
        }
        size_t s = 0;
        for(size_t i = 1; i < n; ++i)
            if(T[i][(i + n - 1) % n] > T[s][(s + n - 1) % n])
                s = i;
        out << T[s][(s + n - 1) % n].first << ' ' << T[s][(s + n - 1) % n].second << '\n';
        delete [] A;
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
