#include <map>
#include <vector>

using input_map = std::map<int, std::vector<char> >;
using output_map = std::map<char, int>;

namespace etl {
   output_map transform(input_map old_map) {
     output_map new_map;

     auto old_map_itr = old_map.cbegin();

     while(old_map_itr != old_map.cend()) {
       auto letters_vector_itr = old_map_itr->second.cbegin();

       while(letters_vector_itr != old_map_itr->second.cend()) {
         new_map[tolower(*letters_vector_itr)] = old_map_itr->first;

         ++letters_vector_itr;
       }

       ++old_map_itr;
     }

    return new_map;
  }
}
