#include <cstdio>
#include <algorithm>
#include <climits>
#include <cstring>

using namespace std;

const int inf=INT_MAX>>2;

int n,L,C,m;

int T[4001];
int W[4001];
int b[4001];
int e[4001];
int R[4001];
int K[4001];

inline int koszt(const int x)   // Koszt pozostawiania t wolnego czasu pod koniec wykładu.
{
    if(x==inf)
        return inf;
    if(x==0)
        return 0;
    if(x<=10)
        return -C;
    return (x-10)*(x-10);
}

inline int czas(int a,int b)    // Łączny czas trwania wykładów <a;b>
{
    return T[b]-T[a-1];
}

int wynik(int wyklad,int temat)
{
    if(K[temat]!=-1)
        return K[temat];
    if(wyklad==1)
        return K[temat]=((czas(1,temat)<=L)?koszt(L-czas(1,temat)):inf);

    int wyn=inf;
    for(int tem=e[wyklad-1]; tem>=b[wyklad-1]; --tem)
    {
        if(czas(tem+1,temat)<=L && wyn>wynik(wyklad-1,tem)+koszt(L-czas(tem+1,temat)))
        {
            wyn=wynik(wyklad-1,tem)+koszt(L-czas(tem+1,temat));
            R[temat]=tem;
        }
    }
    return K[temat]=wyn;
}

int main()
{
    int z;
    scanf("%d\n",&z);
    while(z--)
    {
        scanf("%d %d %d\n",&n,&L,&C);
        T[0]=0;
        memset(K,-1,(n+1)*sizeof(int));
        for(int i=1; i<=n; ++i)
        {
            int x;
            scanf("%d ",&x);
            T[i]=T[i-1]+x;
        }

        /* Rozwiązanie zachłanne */

        m=1;
        b[1]=1;
        for(int i=1,t=L; i<=n; ++i)
        {
            if(t>=czas(i,i))
                t-=czas(i,i);
            else
            {
                e[m]=i-1;
                b[++m]=i;
                t=L-czas(i,i);
            }
        }

        /* Koniec rozwiązania zachłannego */

        printf("%d ",m);

        printf("%d 1",wynik(m,n));

        {
            int out[n+1];
            int *ptr=out;
            int x=n;
            for(int i=1; i<m; ++i)
            {
                *ptr++=R[x]+1;
                x=R[x];
            }
            for(int i=1; i<m; ++i)
                printf(" %d",*--ptr);
        }
        printf("\n");
    }
    return 0;
}
