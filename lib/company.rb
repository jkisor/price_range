class Company
  attr_reader :name, :price_range
  def initialize(name, price_range)
    @name = name
    @price_range = price_range
  end
end