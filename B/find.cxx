#include <iostream>
#include <cstdlib>
#include <fstream>
#include <stdint.h>
#include <vector>
#include <algorithm>
#include <random>
#include <functional>
#include <ctime>
#include <limits.h>

using namespace std;

/**
 * C++ version 0.4 char* style "itoa":
 * Written by Lukás Chmela
 * Released under GPLv3.
 */
char* itoa(int value, char* result, int base) {
    // check that the base if valid
    if (base < 2 || base > 36) { *result = '\0'; return result; }

    char* ptr = result, *ptr1 = result, tmp_char;
    int tmp_value;

    do {
        tmp_value = value;
        value /= base;
        *ptr++ = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" [35 + (tmp_value - value * base)];
    } while ( value );

    // Apply negative sign
    if (tmp_value < 0) *ptr++ = '-';
    *ptr-- = '\0';
    while(ptr1 < ptr) {
        tmp_char = *ptr;
        *ptr--= *ptr1;
        *ptr1++ = tmp_char;
    }
    return result;
}

int main(int argc,char**argv)
{
    uint64_t cc=0;
    if(argc!=5)
    {
        cerr<<argv[0]<<' '<<"<rozwiązanie> <plik wejściowy> <plik wyjściowy> <plik wzorcowy>\n";
        return 1;
    }
    uniform_int_distribution<uint_fast32_t> problemDistribution(0,1);
    uniform_int_distribution<uint_fast32_t> aDistribution(1,31);
    uniform_int_distribution<int_fast64_t> xDistribution(-50000,50000);

    mt19937 engine;
    auto problem=bind(problemDistribution,engine);
    auto a=bind(aDistribution,engine);
    auto x=bind(xDistribution,engine);

    const uint_fast32_t z=1000000;

    do
    {
        cout<<"Test "<<cc++<<'\n';
        ofstream out(argv[2]);
        out<<z<<"\n";
        ofstream wzor(argv[4]);
        for(uint_fast32_t i=0;i<z;++i)
        {
            auto selection=problem();
            if(selection==3)
            {
                long long currentNumber=x();
                out<<"WRITE "<<currentNumber<<"\n";
                time_t currentTime=time(0);
                long long currentDay=localtime(&currentTime)->tm_mday;
                uint_fast32_t moduloDay=currentDay%16;
                if(moduloDay==0)
                    moduloDay=16;
                if(moduloDay==1)
                {
                    if(currentNumber<SHRT_MIN || currentNumber>SHRT_MAX)
                        wzor<<"ERROR\n";
                    else
                    {
                        for(int zzz=15;zzz>=0;--zzz)
                            wzor<<((currentNumber&(1<<zzz))?'1':'0');
                        wzor<<'\n';
                    }
                }
                else
                {
                    char tmp[100];
                    wzor<<itoa(currentNumber,tmp,moduloDay)<<"\n";
                }
            }
            else if(selection==0 || selection==1)
            {
                long long currentNumber=x();
                long long currentDay=a();
                out<<"CODE "<<currentNumber<<" ";
                out<<static_cast<long long>(currentDay)<<"\n";
                uint_fast32_t moduloDay=currentDay%16;
                if(moduloDay==0)
                    moduloDay=16;
                if(moduloDay==1)
                {
                    if(currentNumber<SHRT_MIN || currentNumber>SHRT_MAX)
                        wzor<<"ERROR\n";
                    else
                    {
                        for(int zzz=15;zzz>=0;--zzz)
                            wzor<<((currentNumber&(1<<zzz))?'1':'0');
                        wzor<<"\n";
                    }
                }
                else
                {
                    char tmp[100];
                    wzor<<itoa(currentNumber,tmp,moduloDay)<<"\n";
                }
            }
            else
            {
                cerr<<u8"Błąd wewnętrzny testerki\n";
                return 2;
            }
        }
        out.close();
        wzor.close();
        string command="./";

        command="time ./";
        command+=argv[1];
        command+=" < ";
        command+=argv[2];
        command+=" > ";
        command+=argv[3];
        if(system(command.c_str()))
        {
            cerr<<"Rozwiązanie się wysypało\n";
            return 3;
        }
        command="diff  ";
        command+=argv[4];
        command+=" ";
        command+=argv[3];
        if(system(command.c_str()))
        {
            cerr<<"Rozwiązania różnią się. Debuguj.\n";
            return 4;
        }

    } while(true);
    cout<<"Wszystko OK. Przepychaj\n";

    return 0;
}
