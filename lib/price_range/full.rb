module PriceRange
  class Full < Range
    def overlap? other
      self.first <= other.last && other.first <= self.last
    end
  end
end