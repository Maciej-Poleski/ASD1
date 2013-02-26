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

/* Plan:
 *
 * 1 Wczytać mape
 * 2 Stworzyć fizyczną strukture grafu
 * 3 Przyporządkować każdą krawędź do odpowiedniej dwuspójnej składowej
 * 4 Określić stan początkowy w wirtualnym grafie
 * 5 Przeszukać wszerz wirtualny graf aż do stanu końcowego
 * 6 Wypisać odpowiedź
 */

struct Coord
{
    uint16_t x,y;

    Coord(uint16_t x,uint16_t y) : x(x),y(y) {}
};

struct Edge
{
    uint16_t x,y;
    bool down;

    Edge(uint16_t x,uint16_t y,bool down) : x(x),y(y),down(down) {}
};

static bool operator==(const Edge &lhs,const Edge &rhs)
{
    return lhs.x==rhs.x && lhs.y==rhs.y && lhs.down==rhs.down;
}

static uint_fast16_t n,m;
static char map[1001][1001];
static bool G[1001][1001][2];
static uint32_t DCC[1001][1001][2];
static bool V[1001][1001];
static bool VB[1001][1001][1<<4];
static uint32_t low[1001][1001];
static uint32_t pre[1001][1001];
static uint16_t Px,Py;
static uint16_t Dx,Dy;
static uint16_t Kx,Ky;
static uint32_t counter;
static uint32_t dccCounter;
static std::stack<Edge> stack;

namespace Direction {

enum Direction
{
    right,
    down
};
}

static std::vector<Edge> getEdges(uint16_t x,uint16_t y) __attribute__((hot));
static std::vector<Edge> getEdges(uint16_t x,uint16_t y)
{
    std::vector<Edge> edges;
    if(G[x][y][Direction::right])
        edges.push_back( Edge(x,y,false));
    if(G[x][y][Direction::down])
        edges.push_back( Edge(x,y,true));
    if(G[x][y-1][Direction::right])
        edges.push_back( Edge(x,y-1,false));
    if(G[x-1][y][Direction::down])
        edges.push_back( Edge(x-1,y,true));
    return edges;
}

static Coord getDest(const Edge &edge,uint16_t x,uint16_t y) __attribute__((hot));
static Coord getDest(const Edge &edge,uint16_t x,uint16_t y)
{
    if(edge.x==x && edge.y==y)
        return Coord(x+edge.down,y+!edge.down);
    else if(edge.x+1==x)
    {
        check(edge.down);
        check(edge.y==y);
        return Coord(x-1,y);
    }
    else
    {
        check(edge.down==false);
        check(edge.x==x);
        check(edge.y==y-1);
        return Coord(x,y-1);
    }
    check(false);
}

namespace Position
{
enum Position
{
    top=1,
    right=2,
    bottom=4,
    left=8
};
}

static Position::Position getPosition(uint16_t x,uint16_t y,const Edge &edge);

struct VirtualVertex
{
    uint16_t x,y;
    uint32_t distance;
    uint8_t p;

    std::vector<VirtualVertex> getPossibleStates() const
    {
        // uzyskanie listy sąsiadów gotowych do użycia (wykorzystać DCC)
        std::vector<VirtualVertex> result;
        if(p&Position::top && G[x][y][Direction::down])
        {
            check(map[x-1][y]!='S');
            VirtualVertex v;
            v.distance=distance+1;
            v.x=x+1;
            v.y=y;
            v.p=Position::top;
            std::vector<Edge> edges=getEdges(v.x,v.y);
            for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
            {
                if(DCC[x][y][Direction::down]==DCC[i->x][i->y][i->down])
                    v.p|=getPosition(v.x,v.y,*i);
            }
            result.push_back(v);
        }
        if(p&Position::right && G[x][y-1][Direction::right])
        {
            check(map[x][y+1]!='S');
            VirtualVertex v;
            v.distance=distance+1;
            v.x=x;
            v.y=y-1;
            v.p=Position::right;
            std::vector<Edge> edges=getEdges(v.x,v.y);
            for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
            {
                if(DCC[x][y-1][Direction::right]==DCC[i->x][i->y][i->down])
                    v.p|=getPosition(v.x,v.y,*i);
            }
            result.push_back(v);
        }
        if(p&Position::bottom && G[x-1][y][Direction::down])
        {
            check(map[x+1][y]!='S');
            VirtualVertex v;
            v.distance=distance+1;
            v.x=x-1;
            v.y=y;
            v.p=Position::bottom;
            std::vector<Edge> edges=getEdges(v.x,v.y);
            for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
            {
                if(DCC[x-1][y][Direction::down]==DCC[i->x][i->y][i->down])
                    v.p|=getPosition(v.x,v.y,*i);
            }
            result.push_back(v);
        }
        if(p&Position::left && G[x][y][Direction::right])
        {
            check(map[x][y-1]!='S');
            VirtualVertex v;
            v.distance=distance+1;
            v.x=x;
            v.y=y+1;
            v.p=Position::left;
            std::vector<Edge> edges=getEdges(v.x,v.y);
            for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
            {
                if(DCC[x][y][Direction::right]==DCC[i->x][i->y][i->down])
                    v.p|=getPosition(v.x,v.y,*i);
            }
            result.push_back(v);
        }
        return result;
    }
};

static Position::Position getPosition(uint16_t x,uint16_t y,const Edge &edge)
{
    Coord dest=getDest(edge,x,y);
    if(x==dest.x)
    {
        check(abs(y-dest.y)==1);
        if(y+1==dest.y)
            return Position::right;
        else
        {
            check(y-1==dest.y);
            return Position::left;
        }
    }
    else
    {
        check(y==dest.y);
        check(abs(x-dest.x)==1);
        if(x+1==dest.x)
            return Position::bottom;
        else
        {
            check(x-1==dest.x);
            return Position::top;
        }
    }
}

void dfs1(uint16_t x,uint16_t y,uint16_t px,uint16_t py)
{
    check(!V[x][y]);
    pre[x][y]=low[x][y]=counter++;
    V[x][y]=true;
    std::vector<Edge> edges=getEdges(x,y);
    for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
    {
        Coord dest=getDest(*i,x,y);
        if(dest.x==px && dest.y==py)
            continue;
        if(!V[dest.x][dest.y])  // krawędź drzewowa
        {
            stack.push(*i);
            dfs1(dest.x,dest.y,x,y);
            low[x][y]=std::min(low[x][y],low[dest.x][dest.y]);
            if(low[dest.x][dest.y]>=pre[x][y])
            {
                for(;;)
                {
                    Edge e=stack.top();
                    stack.pop();
                    DCC[e.x][e.y][e.down]=dccCounter;
                    if(e==*i)
                        break;
                }
                ++dccCounter;
            }
        }
        else if(pre[dest.x][dest.y]<pre[x][y])  // krawędź powrotna (od dołu)
        {
            stack.push(*i);
            low[x][y]=std::min(low[x][y],pre[dest.x][dest.y]);
        }
    }
}

static void dfsSearch(uint16_t x,uint16_t y)
{
    if(V[x][y])
        return;
    if(map[x][y]=='P')
        return; // Na to pole nie możemy wejść
    V[x][y]=true;
    std::vector<Edge> edges=getEdges(x,y);
    for(std::vector<Edge>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
    {
        Coord dest=getDest(*i,x,y);
        dfsSearch(dest.x,dest.y);
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
        // 1 Wczytać mape
        in>>n>>m;
        for(size_t i=1; i<=n; ++i)
        {
            std::string line;
            in>>line;
            for(size_t j=0; j<m; ++j)
                map[i][j+1]=line[j];
        }
        // 2 Stworzyć fizyczną strukture grafu
        for(size_t i=0; i<=m; ++i)
            G[0][i][Direction::right]=G[0][i][Direction::down]=false;
        for(size_t j=1; j<=n; ++j)
            G[j][0][Direction::right]=G[j][0][Direction::down]=false;
        for(size_t i=1; i<=m; ++i)
            G[n][i][Direction::down]=false;
        for(size_t j=1; j<=n; ++j)
            G[j][m][Direction::right]=false;
        // Koniec brzegów
        for(size_t i=1; i<n; ++i)
        {
            for(size_t j=1; j<m; ++j)
            {
                G[i][j][Direction::right]=((map[i][j]!='S') && (map[i][j+1]!='S'));
                G[i][j][Direction::down]=((map[i][j]!='S') && (map[i+1][j]!='S'));
            }
        }
        for(size_t i=1; i<n; ++i)
        {
            G[i][m][Direction::down]=((map[i][m]!='S') && ('S'!=map[i+1][m]));
        }
        for(size_t j=1; j<m; ++j)
        {
            G[n][j][Direction::right]=((map[n][j]!='S') && ('S'!=map[n][j+1]));
        }
        {
            bool found=false;
            for(size_t i=1; !found; ++i)
                for(size_t j=1; j<=m && !found; ++j)
                    if(map[i][j]=='P')
                    {
                        Px=i;
                        Py=j;
                        found=true;
                    }
        }
        // 3 Przyporządkować każdą krawędź do odpowiedniej dwuspójnej składowej
        for(size_t i=1; i<=n; ++i)
            for(size_t j=1; j<=m; ++j)
                V[i][j]=false;
        counter=0;
        dccCounter=0;
        while(!stack.empty())
            stack.pop();
        dfs1(Px,Py,0,0);
        // 4 Określić stan początkowy w wirtualnym grafie
        for(size_t i=1; i<=n; ++i)
            for(size_t j=1; j<=m; ++j)
                V[i][j]=false;
        {
            bool found=false;
            for(size_t i=1; !found; ++i)
                for(size_t j=1; j<=m && !found; ++j)
                    if(map[i][j]=='D')
                    {
                        Dx=i;
                        Dy=j;
                        found=true;
                    }
        }
        dfsSearch(Dx,Dy);
        VirtualVertex v;
        v.x=Px;
        v.y=Py;
        v.p=0;
        v.distance=0;
        if(V[Px][Py+1])
            v.p|=Position::right;
        if(V[Px][Py-1])
            v.p|=Position::left;
        if(V[Px+1][Py])
            v.p|=Position::bottom;
        if(V[Px-1][Py])
            v.p|=Position::top;
        // 5 Przeszukać wszerz wirtualny graf aż do stanu końcowego
        {
            bool found=false;
            for(size_t i=1; !found; ++i)
                for(size_t j=1; j<=m && !found; ++j)
                    if(map[i][j]=='K')
                    {
                        Kx=i;
                        Ky=j;
                        found=true;
                    }
        }
        for(size_t i=1; i<=n; ++i)
            for(size_t j=1; j<=m; ++j)
                for(size_t k=0; k<(1<<4); ++k)
                    VB[i][j][k]=false;
        std::queue<VirtualVertex> queue;
        queue.push(v);
        VB[v.x][v.y][v.p]=true;
        bool ok=false;
        while(!queue.empty())
        {
            v=queue.front();
            queue.pop();
            if(v.x==Kx && v.y==Ky)
            {
                out<<v.distance<<'\n';
                ok=true;
                break;
            }
            std::vector<VirtualVertex> edges=v.getPossibleStates();
            for(std::vector<VirtualVertex>::const_iterator i=edges.begin(),e=edges.end(); i!=e; ++i)
            {
                if(VB[i->x][i->y][i->p])
                    continue;
                VB[i->x][i->y][i->p]=true;
                queue.push(*i);
            }
        }
        // 6 Wypisać odpowiedź
        if(!ok)
        {
            out<<"NIE\n";
        }
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
