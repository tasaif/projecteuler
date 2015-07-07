#include <iostream>
using namespace std;

unsigned sum_of_squares(unsigned n = 10){
  unsigned retval = 0;
  for (unsigned i=0; i<=n; i++) retval += i*i;
  return retval;
}

unsigned square_of_sums(unsigned n = 10){
  unsigned retval = 0;
  for (unsigned i=0; i<=n; i++) retval += i;
  return retval*retval;
}

int main(int argc, char* argv[]){
  unsigned n = 100;
  cout << square_of_sums(n) - sum_of_squares(n) << endl;
  return 0;
}
