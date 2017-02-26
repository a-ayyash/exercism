module BookKeeping
VERSION = 3
end

module Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError.new("strands has to be of the same length") if strand1.length != strand2.length
    strand1.chars.zip(strand2.chars).count { |n1, n2| n1 != n2 }
  end
end
