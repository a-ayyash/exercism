#include "bob.h"

namespace bob
{
    std::string hey(std::string s)
    {
        if (s.empty() ||
            std::all_of(s.cbegin(), s.cend(), std::isspace)) return "Fine. Be that way!";
        if (std::any_of(s.cbegin(), s.cend(), std::isupper) &&
            std::all_of(s.cbegin(), s.cend(), [](char c)
                         {
                             return !std::islower(c);
                         })) return "Whoa, chill out!";
        if (s[s.find_last_not_of(" ")] == '?') return "Sure.";
        return "Whatever.";
    }
};
