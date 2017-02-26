module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end


module Raindrops
  RAIN_HASH = { 3 => "Pling", 5 => "Plang", 7 => "Plong" } 

  def convert(integer)
    drop_count = RAIN_HASH.select { |key| integer % key == 0 }
    drop_count.empty? ? integer.to_s : drop_count.values.join
  end

  Raindrops.extend Raindrops
end
