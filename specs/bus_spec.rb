require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("X24", "North Berwick")
    @passenger1 = Person.new("Steven Gerrard", 38)
    @passenger2 = Person.new("Ryan Giggs", 42)
    @passenger3 = Person.new("Paul Pogba", 24)
  end

  def test_get_route_number
    assert_equal("X24", @bus.route_number)
  end

  def test_get_destination
    assert_equal("North Berwick", @bus.destination)
  end

  def test_drive
    assert_equal("All Aboard!", @bus.drive)
  end

  def test_passengers_starts_empty
    assert_equal(0, @bus.passenger_starts_empty)
  end

  def test_passenger_count
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(true, @bus.passengers.include?(@passenger1))
  end

  def test_drop_off
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.pick_up(@passenger3)
    @bus.drop_off(@passenger3)
    assert_equal(false, @bus.passengers.include?(@passenger3))
  end







end
