#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char** argv){
    std::cout << "Hello World!\n";
    std::string line;
    std::ifstream myfile (argv[1]);
    if(myfile.is_open()){
        while(getline(myfile, line)){
            std::cout << line << "\n";
        }
    }
    return 0;
}