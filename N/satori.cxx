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

static inline bool compareByFirst(const std::pair<uint32_t,std::vector<bool> > &a, const std::pair<uint32_t,std::vector<bool> > &b)
{
    return a.first<b.first;
}

static inline void addTo(std::vector<bool> &a, const std::vector<bool> &b)
{
    check(a.size()==b.size());
    for(size_t i=0; i<a.size(); ++i)
        a[i]=(a[i]!=b[i]);
}

static inline bool isZero(const std::vector<bool> &a)
{
    for(std::vector<bool>::const_iterator i=a.begin(),e=a.end(); i!=e; ++i)
        if(*i)
            return false;
    return true;
}

inline static void solution() __attribute__((optimize(3)));
inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        uint_fast16_t n;
        in>>n;
        uint_fast16_t a,b;
        in>>a>>b;
        std::vector<std::pair<uint32_t,std::vector<bool> > > content;
        for(size_t i=0; i<n; ++i)
        {
            uint32_t cost;
            std::vector<bool> image;
            in>>cost;
            in.ignore(std::numeric_limits<std::streamsize>::max(),'\n');
            for(size_t j=0; j<a; ++j)
            {
                for(size_t k=0; k<b; ++k)
                {
                    char p;
                    in>>p;
                    image.push_back(p=='x');
                }
                in.ignore(std::numeric_limits<std::streamsize>::max(),'\n');
            }
            content.push_back(std::make_pair(cost,image));
        }
        std::sort(content.begin(),content.end(),&compareByFirst);
        std::vector<std::vector<bool> > base;   // ref
        std::vector<uint16_t> mapping;
        uint32_t result=0;
        for(std::vector<std::pair<uint32_t,std::vector<bool> > >::iterator i=content.begin(),e=content.end(); i!=e; ++i)
        {
            std::vector<bool> &workingAt=i->second;
            bool dep=false;
            if(isZero(workingAt))
                continue;
            for(size_t j=0; j<base.size(); ++j)
            {
                if(workingAt[mapping[j]])
                    addTo(workingAt,base[j]);
                if(isZero(workingAt)) {
                    dep=true;
                    break;
                }
            }
            if(dep)
                continue;
            result+=i->first;
            base.push_back(workingAt);  // emplace_back
            mapping.push_back(std::find(workingAt.begin(),workingAt.end(),true)-workingAt.begin());
            if(mapping.size()==a*b)
                break;
        }
        out<<result<<'\n';
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
