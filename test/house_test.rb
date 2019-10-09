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
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_does_the_house_exist
    assert_instance_of House, @house
  end

  def test_does_the_house_have_a_price
    assert_equal 400000, @house.price
  end

  def test_does_the_house_have_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_what_rooms_does_the_house_have
    assert_equal [], @house.rooms
  end

  def test_add_room_to_house
    assert_equal [], @house.rooms

    @house.add_room(@room_1)
    assert_equal [@room_1], @house.rooms

    @house.add_room(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end

  def test_rooms_from_room_type_category
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
    assert_equal [], @house.rooms_from_category(:backyard)
  end

  def test_house_area
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 1900, @house.area
  end

end
