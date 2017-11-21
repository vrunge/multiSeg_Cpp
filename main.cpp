#include <iostream>
#include <fstream>

#include"Data.h" ///string+vector
#include"Omega.h" ///vector

#include "math.h"

using namespace std;

int main()
{
///////////////////////////////////////////////////////////////
///Choice of a file and data downloading
string file = "CmultiDim/dataG.txt";
Data data = Data(file);
data.show();
int n = data.getn();
cout<<"PENALITY : "<<2*log(n)<<endl;
///////////////////////////////////////////////////////////////
/// Create an OBJECT OMEGA
Omega omega(2*log(n));

///////////////////////////////////////////////////////////////
/// FPOP ALGORITHM
omega.pelt(data);

omega.show();

    return 0;
}
