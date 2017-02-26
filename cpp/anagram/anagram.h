#include <string>
#include <vector>
#include <map>
#include <algorithm>

namespace anagram{
  class anagram{
  public:
    anagram(const std::string &base) {
      base_string = base;
      std::transform(base_string.begin(), base_string.end(),
          base_string.begin(), ::tolower);
      construct_char_map(base_string, base_map);
    }

    std::vector<std::string> matches(std::vector<std::string> candidates);

  private:
    std::map<char, int> base_map;
    std::string base_string;
    void construct_char_map(const std::string &str, std::map<char, int> &mp);
    bool candidate_is_base(const std::string &cand);
  };
}
