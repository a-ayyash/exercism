#include "anagram.h"

int main() {
  cout << "hello "<< endl;
  anagram::anagram a("good");
  a.matches({"good", "erd", "dog", "odog"});

  return 0;
}
