#include <iostream>
#include <fstream>

using namespace std;

int main(int argc,char**argv)
{
    if(argc!=3)
    {
        cerr<<argv[0]<<" [input] [output]\n";
        return 1;
    }
    ifstream in(argv[1]);
    ofstream out(argv[2]);
    out<<1<<'\n';
    for(;;)
    {
        auto c=in.get();
	if(c==ifstream::traits_type::eof())
	  break;
	else if(ifstream::traits_type::to_char_type(c)=='M')
	  out<<'D';
	else
	  out<<ifstream::traits_type::to_char_type(c);
    }
}
