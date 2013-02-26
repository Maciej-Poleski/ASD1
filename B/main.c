// Maciej Poleski
#ifndef DEBUG
#ifndef NDEBUG
#define NDEBUG
#endif
#define init(x,y)
#define end()
#define input(format,...) scanf(format,## __VA_ARGS__)
#define output(format,...) printf(format,## __VA_ARGS__)
#define inchar() getchar()
#define outchar(x) putchar((x))
#define uninchar(x) ungetc((x),stdin)
#define check(x)
#else
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
FILE *_input=NULL;
FILE *_output=NULL;
bool _initialized=false;
void init(int argc,char**argv)
{
    if(argc!=3)
    {
        fprintf(stderr,"Potrzebne są dwa argumenty <wejście> <wyjście>\n");
        exit(1);
    }
    _input=fopen(argv<:1:>,"r");
    _output=fopen(argv<:2:>,"w");
    _initialized=true;
}
void end(void)
{
    fclose(_input);
    fclose(_output);
}
#define input(format,...) fscanf(_input,format,## __VA_ARGS__)
#define output(format,...) fprintf(_output,format,## __VA_ARGS__)
#define inchar() getc(_input)
#define outchar(x) putc((x),_output)
#define check(x) assert(x)
#define uninchar(x) ungetc((x),_input)
#endif

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <limits.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include <time.h>

int *permutation;
uint64_t *T;

int BS(int l,int r,int what)
{
    check(l<r);
    check(l>=0);
    check(r>=0);
    if(l+1==r)
    {
        return l;
    }
    int s=(l+r)/2;
    if(T[s]<what)
        return BS(s,r,what);
    else
        return BS(l,s,what);
}

inline void solution(void)
{
    int z;
    input("%i",&z);
    permutation=malloc(sizeof(int)*100000);
    T=malloc(sizeof(uint64_t)*100001);
    while(z--)
    {
        int n;
        input("%i",&n);
        int i;
        for(i=0;i<n;++i)
            input("%i",permutation+i);
        T[0]=0L;
        memset(T+1,-1,n*sizeof(uint64_t));
        int k;
        for(k=0;k<n;++k)
        {
            int s=BS(0,n+1,permutation[k]);
            check(T[s]<permutation[k]);
            check(T[s+1]>permutation[k]);
            T[1+s]=permutation[k];
        }
        int result;
        for(result=n;result>=0;--result)
            if(T[result]!=-1L)
                break;
        output("%d\n",n-result);
    }
    free(permutation);
    free(T);
}

#ifdef DEBUG

inline checkAll(void)
{

}

#endif // DEBUG

int main(int argc,char**argv)
{
#ifdef DEBUG
    init(argc,argv);
    checkAll();
#endif // DEBUG
    solution();
#ifdef DEBUG
    end();
#endif // DEBUG
    return 0;
}
