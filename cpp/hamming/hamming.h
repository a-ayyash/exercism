#include <string>
using namespace std;

namespace hamming {
  int compute(const string &strand1, const string &strand2) {
    if (strand1.length() != strand2.length()) {
      throw domain_error("strands are not equal");
    }

    int strand_counter = 0;
    int hamming_distance = 0;

    for (auto c : strand1) {
      if (strand2[strand_counter++] != c) {
        ++hamming_distance;
      }
    }

    return hamming_distance;
  }
}
