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

struct Event
{
    bool type;  // false - lewy, true - prawy
    uint32_t position;
    uint32_t id;

    bool operator<(const Event &o) const
    {
        return position<o.position || (position==o.position && type<o.type);
    }
};

struct Status
{
    uint32_t have;
    uint32_t want;

    Status() : have(0) {}
};

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
        Status *S=new (std::nothrow) Status[n];
        Event *events=new (std::nothrow) Event[n*2];
        for(size_t i=0;i<n;++i)
        {
            uint_fast32_t l,r,n;
            in>>l>>r>>n;
            S[i].want=n;
            events[2*i].id=events[2*i+1].id=i;
            events[2*i].position=l;
            events[2*i+1].position=r;
            events[2*i].type=false;
            events[2*i+1].type=true;
        }
        std::sort(events,events+2*n);
        uint32_t current=0;
        for(const Event *i=events,*e=events+2*n;i!=e;++i)
        {
            if(i->type==false)
            {
                S[i->id].have=current;
            }
            else
            {
                if(current-S[i->id].have<S[i->id].want)
                    current=S[i->id].want+S[i->id].have;
            }
        }
        delete [] events;
        delete [] S;
        out<<current<<'\n';
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
