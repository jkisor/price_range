require './lib/price_range/factory'

class Companies
  def initialize companies
    @companies = companies
  end
  
  def in_price_range range
    result = []
    range = PriceRange::Factory.create(range)
    @companies.each do |c|
      if range.overlap? c.price_range
        result << c
      end
    end
    result
  end
end