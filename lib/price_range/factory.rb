['unspecified', 'minimum', 'full'].each do |type| 
  require './lib/price_range/' + type
end

module PriceRange
  class Factory
    def self.create range
      if(range.first == 0 && range.last == 0)
        Unspecified.new
      elsif range.last == 0
        Minimum.new(range.first)
      else
        Full.new(range.first, range.last)
      end
    end
  end
end