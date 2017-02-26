module BookKeeping 
    VERSION = 5 # Where the version number matches the one in the test.
end

module Gigasecond
    GIGASECOND = 1_000_000_000

    def self.from(start_point)
        start_point + Gigasecond::GIGASECOND
    end
end
