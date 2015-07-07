#include <iostream>
using namespace std;

bool isdiv(unsigned n, unsigned max = 20){
  for(int i=2; i<max; i++){
    if (n%i !=0 ) return false;
  }
  return true;
}

int main(int argc, char* argv[]){
  unsigned i = 1;
  while (true) {
    if (isdiv(i)){
      cout << i << endl;
      break;
    }
    i++;
  }
  return 0;
}
