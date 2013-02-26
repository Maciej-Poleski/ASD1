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

const uint_fast16_t maxLength = 3000;

static std::vector<uint16_t> LCS(const std::string& A, const std::string& B)
__attribute__((const, hot, optimize(3)));

static std::vector<uint16_t> LCS(const std::string& A, const std::string& B)
{
    static uint16_t C[2][maxLength + 1];
    for(size_t i = 0; i <= B.size(); ++i)
        C[0][i] = 0;
    C[1][0] = 0;
    for(size_t i = 1; i <= A.size(); ++i)
        for(size_t j = 1; j <= B.size(); ++j)
        {
            C[i % 2][j] =
                std::max(C[(i - 1) % 2][j],
                         std::max(C[i % 2][j - 1],
                                  A[i - 1] == B[j - 1] ?
                                  static_cast<uint16_t>(C[(i - 1) % 2][j - 1] + 1) :
                                  static_cast<uint16_t>(0)));
        }
    return std::vector<uint16_t>(&C[A.size() % 2][0], &C[A.size() % 2][B.size() + 1]);
}

static std::string HI(std::string A, std::string B)
__attribute__((const, hot, optimize(3)));

static std::string HI(std::string A, std::string B)
{
    using std::swap;
    if(A.size() > B.size())
        swap(A, B);
    if(A.size() == 0)
        return "";
    else if(A.size() == 1)
    {
        if(B.find(A[0]) != std::string::npos)
            return A;
        else
            return "";
    }
    else
    {
        std::string A0 = A.substr(0, A.size() / 2), A1 = A.substr(A.size() / 2);
        std::vector<uint16_t> LCS1 = LCS(A0, B),
                              LCS2 = LCS(std::string(A1.rbegin(), A1.rend()),
                                         std::string(B.rbegin(), B.rend()));
        uint16_t best = 0;
        uint16_t sel = 0;
        for(size_t i = 0; i <= B.size(); ++i)
            if(best < LCS1[i] + LCS2[B.size() - i])
            {
                best = LCS1[i] + LCS2[B.size() - i];
                sel = i;
            }
        std::string B0 = B.substr(0, sel),
                    B1 = B.substr(sel);
        return HI(A0, B0) + HI(A1, B1);
    }
}

inline static void solution()
{
    using std::swap;
    std::tr1::uint_fast32_t z;
    in >> z;
    while(z--)
    {
        std::string A, B;
        in >> A >> B;
        std::string R = HI(A, B);
        out << R.size() << '\n' << R << '\n';
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
