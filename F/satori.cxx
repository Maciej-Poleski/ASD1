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
#include <cstdio>

namespace
{
using namespace Wrapper;

static uint_fast16_t n;
static std::pair<uint32_t, int32_t> *D; // second - czas do bieguna

static uint32_t L[1001][1001];
static uint32_t R[1001][1001];

static const uint32_t fail = std::numeric_limits< uint32_t>::max();

static inline uint32_t travelTime(uint16_t a, uint16_t b) __attribute__((pure));
static inline uint32_t travelTime(uint16_t a, uint16_t b)
{
    if(a <= b)
    {
        check(D[b].first - D[a].first >= 0);
        return D[b].first - D[a].first;
    }
    else
    {
        check(D[b].first >= 0);
        uint32_t part1 = D[b].first;
        check(360 * 60 * 60 - D[a].first >= 0);
        uint32_t part2 = 360 * 60 * 60 - D[a].first;
        return part1 + part2;
    }
    check(false);
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
        D = new std::pair<uint32_t, int32_t>[n + 1];
        D[0] = std::make_pair<uint32_t, int32_t>(0, -1);
        for(size_t i = 1; i <= n; ++i)
        {
            std::string tmp;
            in >> tmp;
            int x, y, z;
            char c;
            sscanf(tmp.c_str(), "%d*%d'%d\"%c", &x, &y, &z, &c);
            if(c == 'N')
            {
                uint_fast32_t t = 90 * 60 * 60 - ((x * 60 + y) * 60 + z);
                D[i].second = ((40320 / 2 / 180) * t) / (28);
            }
            else
            {
                check(c == 'S');
                uint_fast32_t t = 90 * 60 * 60 + ((x * 60 + y) * 60 + z);
                D[i].second = ((40320 / 2 / 180) * t) / (28);
            }
            in >> tmp;
            sscanf(tmp.c_str(), "%d*%d'%d\"%c", &x, &y, &z, &c);
            if(c == 'W')
            {
                D[i].first = (x * 60 + y) * 60 + z;
            }
            else
            {
                check(c == 'E');
                uint_fast32_t t = (x * 60 + y) * 60 + z;
                D[i].first = (t == 0 ? 0 : 360 * 60 * 60 - t);
            }
        }
        std::sort(D, D + n + 1);
        for(size_t i = 0; i <= n; ++i)
            for(size_t j = 0; j <= n; ++j)
                L[i][j] = R[i][j] = fail;
        L[0][0] = R[0][0] = 0;
        for(size_t length = 2; length <= n + 1; ++length)
        {
            for(size_t i = 0; i < length; ++i)
            {
                size_t j = (i + n + 1 + 1 - length) % (n + 1);
                size_t l, r;
                l = j;
                r = i;
                bool wantLeft = true;
                bool wantRight = true;
                if(l == 0)
                    wantLeft = false;
                if(r == 0)
                    wantRight = false;
                if(wantLeft)
                {
                    size_t newL = (l + 1) % (n + 1);
                    if(L[newL][r] != fail)
                    {
                        if(L[newL][r] + travelTime(l, newL) <= D[l].second)
                        {
                            L[l][r] = std::min(L[l][r], L[newL][r] + travelTime(l, newL));
                            R[l][r] = std::min(R[l][r], L[l][r] + travelTime(l, r));
                        }
                    }
                    if(R[newL][r] != fail)
                    {
                        if(R[newL][r] + travelTime(l, r) <= D[l].second)
                        {
                            L[l][r] = std::min(L[l][r], R[newL][r] + travelTime(l, r));
                            R[l][r] = std::min(R[l][r], L[l][r] + travelTime(l, r));
                        }
                    }
                }
                if(wantRight)
                {
                    size_t newR = (r + n) % (n + 1);
                    if(R[l][newR] != fail)
                    {
                        if(R[l][newR] + travelTime(newR, r) <= D[r].second)
                        {
                            R[l][r] = std::min(R[l][r], R[l][newR] + travelTime(newR, r));
                            L[l][r] = std::min(L[l][r], R[l][r] + travelTime(l, r));
                        }
                    }
                    if(L[l][newR] != fail)
                    {
                        if(L[l][newR] + travelTime(l, r) <= D[r].second)
                        {
                            R[l][r] = std::min(R[l][r], L[l][newR] + travelTime(l, r));
                            L[l][r] = std::min(L[l][r], R[l][r] + travelTime(l, r));
                        }
                    }
                }
            }
        }
        bool ok = false;
        for(size_t i = 0; i <= n; ++i)
        {
            if(L[(i + 1) % (n + 1)][i] != fail || R[(i + 1) % (n + 1)][i] != fail)
            {
                out << "ALIVE\n";
                ok = true;
                break;
            }
        }
        if(!ok)
        {
            out << "EATEN\n";
        }
        delete [] D;
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
