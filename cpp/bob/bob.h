#ifndef BOB_H
#define BOB_H

#include <algorithm>
#include <cctype>
#include <string>

namespace bob {
    std::string hey(std::string s);
}

#endif
/*
#include <string>
#include <algorithm>
#include <cctype>
#include <iostream>
using namespace std;

class bob {
  public:
    static string hey(string s) {
      if (s.empty() ||
          std::all_of(s.cbegin(), s.cend(), std::isspace)) return "Fine. Be that way!";
      if (std::any_of(s.cbegin(), s.cend(), std::isupper) &&
          std::all_of(s.cbegin(), s.cend(), [](char c)
                        {
                            return std::isupper(c) || std::isdigit(c) || std::ispunct(c) ||
                                std::isspace(c);
                        })) return "Whoa, chill out!";
      if (s[s.find_last_not_of(" ")] == '?') return "Sure.";
      return "Whatever.";
    }
    static string hey2(const string& msg) {
      if (is_uppercase(msg)) {
        return "Whoa, chill out!";
      } else if(is_a_question(msg)) {
        return "Sure.";
      }  else if (is_empty(msg)) {
        return "Fine. Be that way!";
      } else {
        return "Whatever.";
      }
    }

    static bool is_a_question(const string &msg) {

      //trim
      int last_index = msg.size() - 1;

      while(msg[last_index] == ' ') {
        last_index--;
      }

      return msg[last_index] == '?';
    }

    static bool is_shouting(const string &msg) {
      //shouting will be defined as:
      //a) having at least two consecutive capitalized words.
      //b) single capitalized word with no other words.

      bool is_capital_word = false;
      bool word_started = false;
      bool shouting = false;
      int capital_words_counter = 0;
      const int WORD_COUNT_TO_SHOUT = 2;
      bool is_last_word = false;

      for(int i = 0; i < msg.size(); i++) {

        is_last_word = i == msg.size() - 1;

        if (is_alphabet(msg[i]) && !word_started) {
          word_started = true;
          is_capital_word = true;
        }

        //word ended or reached the last word
        if ((msg[i] == ' ' && word_started) || is_last_word) {
          word_started = false;

          if (is_capital_word) {
            capital_words_counter++;
          } else {
            capital_words_counter--;
          }

          if (capital_words_counter == WORD_COUNT_TO_SHOUT ||
              (capital_words_counter > 0 && is_last_word)) {
            shouting = true;
            break;
          }
        }

        if (word_started) {
          if(is_small_letter(msg[i])) {
            is_capital_word = false;
          }
        }
      }

      return shouting;
    }

    static bool is_uppercase(std::string t) {
      for(int i = 0; i < t.length(); i++) {
        char c = t[i];
        if(c <= 'z' && c >= 'a') return false;
      }

      for(int i = 0; i < t.length(); i++) {
        char c = t[i];
        if(c <= 'Z' && c >= 'A') return true;
      }
      return false;
    }

    static bool is_empty(const string &msg) {
      bool empty_string = true;

      for (int i = 0; i < msg.size(); i ++) {
        if (msg[i] != ' ') {
          empty_string = false;
          break;
        }
      }

      return empty_string;
    }

    static bool is_alphabet(char c) {
      return is_small_letter(c) || is_capital_letter(c);
    }

    static bool is_small_letter(char c) {
      return c >= 97 && c <= 122;
    }

    static bool is_capital_letter(char c) {
      return c >= 65 && c <= 90;
    }
};
*/
