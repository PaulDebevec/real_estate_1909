require './lib/room'

class House
  attr_reader :price, :address

  def initialize(price, address)
    @price = price
    @address = address

  end

  def price
    house_price = @price.delete "$"
    house_price.to_i
  end

end
