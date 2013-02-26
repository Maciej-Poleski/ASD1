#include <iostream>
#include <fstream>

using namespace std;

bool wantWall(int x,int y)
{
    if(x==999 && y==1000)
        return true;
    if(x==1000 && y==999)
        return true;
    return false;
}

int main(int argc,char**argv)
{
    if(argc!=2)
    {
        cerr<<argv[0]<<" [input]\n";
        return 1;
    }
    ofstream out(argv[1]);
    int z=1;
    int n=1000;
    int m=1000;
    out<<z<<'\n'<<n<<' '<<m<<'\n';
    int Dx=1,Dy=1;
    int Px=2,Py=2;
    int Kx=1000,Ky=1000;
    for(int i=1; i<=n; ++i)
    {
        for(int j=1; j<=m; ++j)
        {
            int count=0;
            if(i==Dx && j==Dy)
            {
                out<<'D';
                ++count;
            }
            if(i==Px && j==Py)
            {
                out<<'P';
                ++count;
            }
            if(i==Kx && j==Ky)
            {
                out<<'K';
                ++count;
            }
            if(count>1)
            {
                cerr<<"Niepoprawny dobór pozycji\n";
                return 2;
            }
            if(count==0)
            {
                if(!wantWall(i,j))
                    out<<'w';
                else
                    out<<'S';
            }
        }
        out<<'\n';
    }
}
