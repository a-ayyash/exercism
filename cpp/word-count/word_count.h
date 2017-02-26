#include <map>
#include <string>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;
using words_map = map<string, int>;

namespace word_count {
  string::const_iterator find_next_legal_character(string::const_iterator start,
      string::const_iterator end) {
    for(; start != end; start++) {
      if (std::isalnum(*start)) {
        return start;
      } else {
        if (*start == '\'' && std::isalnum(*(start-1)) && std::isalnum(*(start+1)))
          return start;
      }
    }

    return end;
  }

  string::const_iterator find_next_illegal_character(string::const_iterator start,
      string::const_iterator end) {
    for(; start != end; start++) {
      if (std::isalnum(*start) == 0) {
        if (*start == '\'' && std::isalnum(*(start-1)) && std::isalnum(*(start+1))) {
          continue;
        }
          return start;
      }
    }

    return end;
  }

  vector<string> tokenize(const string &str) {
    vector<string> output;
    string raw_str;

    auto start_itr = find_next_legal_character(str.cbegin(), str.cend());
    auto end_itr = find_next_illegal_character(start_itr, str.cend());

    while(start_itr != str.cend()) {
      raw_str = str.substr(str.length() - (str.cend() - start_itr), 
            end_itr - start_itr);
      std::transform(raw_str.cbegin(), raw_str.cend(), raw_str.begin(), ::tolower);
      output.push_back(raw_str);
      start_itr = find_next_legal_character(end_itr, str.cend());
      end_itr = find_next_illegal_character(start_itr, str.cend());
    }

    return output;
  }

  words_map words(const string &str) {
    vector<string> words_v = tokenize(str);
    words_map words_frequencies;

    for(const auto &w : words_v) {
      ++words_frequencies[w];
    }

    return words_frequencies;
  }
}
