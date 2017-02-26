module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    range = (2..@limit).to_a
    ps = []

    2.upto(@limit) do |i|
      unless range.index(i).nil?
        ps << i
        range.reject! { |x| x % i == 0 } 
      end
    end

    ps
  end
end
