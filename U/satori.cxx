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

struct Edge
{
    int16_t w;
    uint16_t s;
    uint16_t d;
};

static Edge *E;
static double D[1<<16];
static uint_fast16_t n;

/**
 * Szukam tylko cyklu o ujemnej wadze
 *
 * @return false - jest cykl o ujemnej wadze
 */
static bool fb(double avg)
{
    for(char a='a'; a<='z'; ++a)
        for(char b='a'; b<='z'; ++b)
            D[(static_cast<uint16_t>(a)<<8)|b]=.0;
    bool ok;
    for(size_t i=0; i<=676; ++i)
    {
        ok=true;
        for(const Edge *i=E,*e=E+n; i!=e; ++i)
        {
            if(D[i->d]>D[i->s]+i->w+avg)
            {
                D[i->d]=D[i->s]+i->w+avg;
                ok=false;
            }
        }
        if(ok)
            break;
    }
    return ok;
}

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        in>>n;
        E=new Edge[n];
        size_t max=0;

        for(size_t i=0; i<n; ++i)
        {
            char word[1005];
            in>>word;
            size_t length=std::strlen(word);
            max=std::max(max,length);
            E[i]= {-length,*reinterpret_cast<uint16_t*>(word),*reinterpret_cast<uint16_t*>(word+length-2)};
        }
        if(fb(0))
        {
            out<<"NIE\n";
        }
        else
        {
            double l=2;
            double r=max;
            const double d=.00001;
            while(r-l>=d)
            {
                double s=(l+r)/2;
                if(fb(s))
                    r=s;
                else
                    l=s;
            }
            out<<std::fixed<<std::setprecision(4)<<(l+r)/2<<'\n';
        }
        delete [] E;
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
