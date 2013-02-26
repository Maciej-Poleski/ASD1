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
#include <deque>
#include <list>

namespace
{
using namespace Wrapper;

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast16_t k;
        uint_fast32_t n, m;
        in >> k >> n >> m;
        uint32_t* Q = new uint32_t[m];
        for(size_t i = 0; i < m; ++i)
            in >> Q[i];
        bool* C = new bool[n + 1];
        memset(C + 1, 0, sizeof(bool)*n);
        std::list<uint32_t> *P = new std::list<uint32_t>[n + 1];
        for(size_t i = 0; i < m; ++i)
            P[Q[i]].push_back(i);
        for(size_t i = 1; i <= n; ++i)
            if(P[i].empty() == false)
                P[i].pop_front();
        uint_fast32_t result = 0;
        uint_fast32_t cacheLoad = 0;
        std::priority_queue<std::pair<uint32_t, uint32_t> > queue;
        for(size_t i = 0; i < m; ++i)
        {
            uint32_t cell = Q[i];
            if(C[cell])
            {
                if(P[cell].empty() == false)
                {
                    queue.push(std::make_pair<uint32_t, uint32_t>(P[cell].front(), cell));
                    P[cell].pop_front();
                }
                else
                {
                    queue.push(std::make_pair<uint32_t, uint32_t>(std::numeric_limits<uint32_t>::max(), cell));
                }
            }
            else
            {
                if(cacheLoad == k)
                {
                    std::pair<uint32_t, uint32_t> info;
                    for(;;)
                    {
                        info = queue.top();
                        queue.pop();
                        if(info.first > i)
                            break;
                    }
                    ++result;
                    C[info.second] = false;
                    C[cell] = true;
                    if(P[cell].empty() == false)
                    {
                        queue.push(std::make_pair<uint32_t, uint32_t>(P[cell].front(), cell));
                        P[cell].pop_front();
                    }
                    else
                    {
                        queue.push(std::make_pair<uint32_t, uint32_t>(std::numeric_limits<uint32_t>::max(), cell));
                    }
                }
                else
                {
                    ++cacheLoad;
                    ++result;
                    C[cell] = true;
                    if(P[cell].empty() == false)
                    {
                        queue.push(std::make_pair<uint32_t, uint32_t>(P[cell].front(), cell));
                        P[cell].pop_front();
                    }
                    else
                    {
                        queue.push(std::make_pair<uint32_t, uint32_t>(std::numeric_limits<uint32_t>::max(), cell));
                    }
                }
            }
        }
        out << result << '\n';
        delete [] P;
        delete [] C;
        delete [] Q;
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
