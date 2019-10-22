require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("X24", "North Berwick")
  end

  def test_get_route_number
    assert_equal("X24", @bus.route_number)
  end

  def test_get_destination
    assert_equal("North Berwick", @bus.destination)
  end







end
