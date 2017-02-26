module BookKeeping
  VERSION = 2
end


module Pangram
  def self.is_pangram?(str)
    str.downcase!
    str.gsub!(/[^a-z]/, '')
    dict = {}
    str.chars.map { |a| dict[a] = 1 unless dict[a] }
    dict.values.reduce(:+) == 26 
  end
end
