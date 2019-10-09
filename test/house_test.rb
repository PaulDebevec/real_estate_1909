require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test
  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end

  def test_does_the_house_exist
    assert_instance_of House, @house
  end

  def test_does_the_house_have_a_price
    skip
    assert_equal 400000, @house.price
  end

  def test_does_the_house_have_an_address
    skip
    assert_equal "123 sugar lane", @house.address
  end

  def test_what_rooms_does_the_house_have
    skip
    assert_equal [], @house.rooms
  end

  def test_add_room_to_house
    skip
    assert_equal [], @house.rooms
    house.add_room(@room_1)
    assert_equal @rooms, [@room_1]
    house.add_room(@room_2)
    assert_equal @rooms, [@room_1, @room_2]
  end

end
