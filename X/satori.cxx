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

struct Node
{
    uint32_t value;
    bool reverse;
    uint32_t subtreeSize;
    Node *left;
    Node *right;
    Node *parent;

    void deleteSubtree()
    {
        if(left)
        {
            left->deleteSubtree();
            delete left;
            left=NULL;
        }
        if(right)
        {
            right->deleteSubtree();
            delete right;
            right=NULL;
        }
    }
};

Node *root;

static void prepareNode(Node * const node)
{
    check(node);
    if(node->reverse)
    {
        using std::swap;
        swap(node->left,node->right);
        node->reverse=false;
        if(node->left)
            node->left->reverse=!node->left->reverse;
        if(node->right)
            node->right->reverse=!node->right->reverse;
        // subtreeSize is ok
        // parent is ok
        // value is constant
    }
}

static uint32_t subtreeSize(const Node * const node) __attribute__((pure));
static uint32_t subtreeSize(const Node * const node)
{
    check(node);
    uint32_t result=1;
    result+=node->left?node->left->subtreeSize:0;
    result+=node->right?node->right->subtreeSize:0;
    return result;
}

static uint32_t checkSubtree(const Node * const node)
{
#ifdef DEBUG
    check(node);
    uint32_t result=1;
    if(node->left)
    {
        check(node->left->parent==node);
        result+=checkSubtree(node->left);
    }
    if(node->right)
    {
        check(node->right->parent==node);
        result+=checkSubtree(node->right);
    }
    check(result==node->subtreeSize);
    return result;
#else
    return -1;
#endif
}

static void checkTree()
{
#ifdef DEBUG
    checkSubtree(root);
#endif
}

static void rotate(Node *const node)
{
    check(node);
    check(node->parent);
    prepareNode(node->parent);
    prepareNode(node);
    if(node==node->parent->left)
    {
        // rotate right
        node->parent->left=node->right;
        if(node->right)
            node->right->parent=node->parent;
        node->right=node->parent;
        node->parent=node->right->parent;
        node->right->parent=node;
        ((node->parent)?(((node->parent->left)==(node->right))?(node->parent->left):(node->parent->right)):root)=node;
        node->right->subtreeSize=subtreeSize(node->right);
        node->subtreeSize=subtreeSize(node);
    }
    else
    {
        // rotate left
        node->parent->right=node->left;
        if(node->left)
            node->left->parent=node->parent;
        node->left=node->parent;
        node->parent=node->left->parent;
        node->left->parent=node;
        ((node->parent)?(((node->parent->left)==(node->left))?(node->parent->left):(node->parent->right)):root)=node;
        node->left->subtreeSize=subtreeSize(node->left);
        node->subtreeSize=subtreeSize(node);
    }
    checkTree();
}

static void zig(Node * const node)
{
    check(node);
    check(node->parent);
    check(node->parent->parent==NULL);
    rotate(node);
}

static void zigzig(Node * const node)
{
    check(node);
    check(node->parent);
    check(node->parent->parent);
    rotate(node->parent);
    rotate(node);
}

static void zigzag(Node * const node)
{
    check(node);
    check(node->parent);
    check(node->parent->parent);
    rotate(node);
    rotate(node);
}

static void performAppriopriateZigVariant(Node * const node)
{
    check(node);
    check(node->parent);
    if(node->parent->parent==NULL)
    {
        zig(node);
    }
    else if((node->parent->left==node) == (node->parent->parent->left==node->parent))
    {
        zigzig(node);
    }
    else
    {
        zigzag(node);
    }
}

static void splay(Node * const node)
{
    check(node);
    while(node->parent)
    {
        performAppriopriateZigVariant(node);
    }
    check(node==root);
    checkTree();
}

static Node * getNode(Node * const node, uint32_t n)
{
    check(node);
    prepareNode(node);
    if(node->left && n<=node->left->subtreeSize)
        return getNode(node->left,n);
    else if(((node->left)?(node->left->subtreeSize):0)+1==n)
        return node;
    else
        return getNode(node->right,n-1-((node->left)?(node->left->subtreeSize):0));
}

static Node * getNodeFull(uint_fast32_t n)
{
    Node *result=getNode(root,n);
    splay(result);
    return result;
}

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
        root=NULL;
        for(size_t i=n; i>0; --i)
        {
            Node *node=new Node;
            node->right=root;
            if(root)
                root->parent=node;
            node->parent=NULL;
            node->left=NULL;
            node->value=i;
            node->reverse=false;
            node->subtreeSize=subtreeSize(node);
            root=node;
        }
        checkTree();
        uint_fast32_t q;
        in>>q;
        while(q--)
        {
            uint_fast32_t a,b;
            in>>a>>b;
            Node *node=getNodeFull(a);
            out<<node->value<<' ';
            node=getNodeFull(b);
            out<<node->value<<'\n';
            if(b==n)
            {
                node->reverse=!node->reverse;
                if(a!=1)
                {
                    node=getNodeFull(b-a+1+1);
                    node->left->reverse=!node->left->reverse;
                    node=getNodeFull(b);
                    node->reverse=!node->reverse;
                }
            }
            else
            {
                check(b<n);
                node=getNodeFull(b+1);
                node->left->reverse=!node->left->reverse;
                if(a!=1)
                {
                    node=getNodeFull(b-a+1+1);
                    node->left->reverse=!node->left->reverse;
                    node=getNodeFull(b+1);
                    node->left->reverse=!node->left->reverse;
                }
            }
            checkTree();
        }
        root->deleteSubtree();
        delete root;
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
