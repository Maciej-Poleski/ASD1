#include <iostream>
#include <fstream>
#include <random>
#include <functional>

using namespace std;

int main(int argc,char**argv)
{
    if(argc!=2)
    {
        cout<<argv[0]<<" [t.out]\n";
        return 1;
    }
    ofstream out(argv[1]);
    out<<1<<'\n';
    unsigned long k=1000,n=1000000,m=1000000;
    out<<k<<' '<<n<<' '<<m<<'\n';
    mt19937 engine;
    uniform_int_distribution<long> dist(1,n);
    auto gen=bind(dist,engine);
    for(size_t i=0;i<m;++i)
        out<<gen()<<'\n';
    return 0;
}