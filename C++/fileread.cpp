#include <iostream>
#include <fstream>
#include <string>

using namespace std;

double fileread(string fpath){
	string line;
	string stringdump[7] = {"a", "b", "c", "d", "e", "f", "g"};	
	ifstream setup (fpath);
	if (setup.is_open())
	{
		getline(setup,line);
		int linecount = 0;		
		while (line!="Settings:" && linecount<30)
		{
			getline(setup,line);
			linecount += 1;
		}
		for (int i=0; i<7; i++)
		{
			getline(setup,stringdump[i]);
		}
		setup.close();	
	}
	double r = stod(stringdump[0]);
	cout << r << "\n";
	return 2.71828182845904;
}

int main() {
	string setuppath = "Setup/Setup.vec";
	fileread(setuppath);
	return 0;
}
	
	
