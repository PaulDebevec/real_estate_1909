require './lib/room'

class House
  attr_reader :price, :address
  attr_accessor :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    house_price = @price.delete "$"
    house_price.to_i
  end

  def address
    "#{@address}"
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select {|room| room.category == category}
  end

  def area
    house_area = 0
    @rooms.each do |room|
      house_area += room.length * room.width
    end
    house_area
  end

end
