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

struct Edge
{
    uint16_t a, b;
    uint32_t w;

    bool operator<(const Edge& e) const
    {
        return w < e.w;
    }
};

Edge* X;

/**
 * To nie jest przenośna implementacja!
 */
class FindUnion
{
public:
    FindUnion(uint_fast16_t size) : P(new uint16_t[size]), R(new uint16_t[size])
    {
        for(size_t i = 0; i < size; ++i)
            P[i] = i, R[i] = 0;
    }

    ~FindUnion()
    {
        delete [] P;
        delete [] R;
    }

    uint16_t find(uint16_t what)
    {
        if(what == P[what])
            return what;
        return P[what] = find(P[what]);
    }

    bool findAndUnion(uint16_t x, uint16_t y)
    {
        uint16_t a = find(x);
        uint16_t b = find(y);
        if(a == b)
            return false;
        if(R[a] < R[b])
            P[a] = b;
        else
            P[b] = a;
        if(R[a] == R[b])
            ++R[a];
        return true;
    }

private:
    uint16_t* P;
    uint16_t* R;
};

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast16_t n;
        uint_fast32_t m;
        in >> n >> m;
        X = new Edge[m];
        for(size_t i = 0; i < m; ++i)
            in >> X[i].a >> X[i].b >> X[i].w;
        std::sort(X, X + m);
        uint_fast16_t edges = 0;
        uint_fast64_t cost = 0;
        FindUnion fu(n);
        for(size_t i = 0; edges < n - 1; ++i)
        {
            check(i < m);
            if(fu.findAndUnion(X[i].a - 1, X[i].b - 1))
            {
                ++edges;
                cost += X[i].w;
            }
        }
        out << cost << '\n';
        delete [] X;
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
