module BookKeeping
  VERSION = 3
end


class Squares

  def initialize(n)
    @n = n
  end

  def square_of_sum
    numerator   = @n * ( @n + 1 ) 
    denomenator = 2

    result = numerator / denomenator
    result ** 2
  end

  def sum_of_squares
    numerator   = @n * ( @n + 1 ) * ( @n * 2 + 1 )
    denomenator = 6

    numerator / denomenator
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
