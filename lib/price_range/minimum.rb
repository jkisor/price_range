module PriceRange
  class Minimum
    def initialize price
      @price = price
    end

    def overlap? other
      other.include? @price
    end
  end
end