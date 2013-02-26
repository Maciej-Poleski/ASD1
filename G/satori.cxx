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

static std::vector<uint32_t> *G[2];
static uint32_t* A[2];
static std::stack<uint32_t> T;
static bool* V;
static uint_fast32_t n, m;

template<uint8_t mode>
static void topsort(uint32_t v)
{
    if(V[v])
        return;
    V[v] = true;
    for(std::vector<uint32_t>::iterator i = G[mode][v].begin(), e = G[mode][v].end(); i != e; ++i)
    {
        topsort<mode>(*i);
    }
    T.push(v);
}

template<uint8_t mode>
inline static void impl()
{
    V = new bool[n + 1];
    memset(V + 1, 0, sizeof(bool)*n);
    for(size_t i = 1; i <= n; ++i)
        topsort<mode>(i);
    delete [] V;
    A[mode] = new uint32_t[n + 1];
    while(!T.empty())
    {
        uint32_t max = 0;
        for(std::vector<uint32_t>::iterator i = G[mode == 0][T.top()].begin(), e = G[mode == 0][T.top()].end(); i != e; ++i)
        {
            max = std::max(max, A[mode][*i]);
        }
        A[mode][T.top()] = max+1;
        T.pop();
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
        check(T.empty());
        in >> n >> m;
        G[0] = new std::vector<uint32_t>[n + 1];
        G[1] = new std::vector<uint32_t>[n + 1];
        for(size_t i = 0; i < m; ++i)
        {
            uint_fast32_t a, b;
            in >> a >> b;
            G[0][a].push_back(b);
            G[1][b].push_back(a);
        }
        impl<0>();
        impl<1>();
        delete [] G[0];
        delete [] G[1];

        for(size_t i = 1; i <= n; ++i)
            out << A[0][i] + A[1][i] - 1<<' ';
        out << '\n';
        delete [] A[0];
        delete [] A[1];
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
