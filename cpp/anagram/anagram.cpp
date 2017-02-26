#include "anagram.h"
using namespace std;

vector<string> anagram::anagram::matches(vector<string> candidates) {
  vector<string> anagrams;
  map<char, int> local_map;

  for(string candidate : candidates) {

    if (candidate.length() != base_string.length()) {
      continue;
    }

    if (candidate_is_base(candidate)) {
      continue;
    }

    construct_char_map(candidate, local_map);

    if (local_map == base_map) {
      anagrams.push_back(candidate);
    }

    local_map.clear();
  }

  return anagrams;
}

void anagram::anagram::construct_char_map(const string &str, map<char, int> &mp) {
  for(auto c : str) {
    c = tolower(c);
    mp[c] = mp[c] + 1;
  }
}

bool anagram::anagram::candidate_is_base(const string &cand) {
  string candidate = cand;
  transform(candidate.begin(), candidate.end(), 
      candidate.begin(), ::tolower);

  return candidate == base_string;
}
