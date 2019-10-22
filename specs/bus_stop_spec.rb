require('minitest/autorun')
require('minitest/rg')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup()
    @stop_A = BusStop.new("Princes Street")
    @person_A
  end

  def test_get_name()
    assert_equal("Princes Street", @stop_A.name)
  end

  def test_get_queue()
    assert_equal(0, @stop_A.queue.length())
  end

  def test_add_person_to_queue()
    @stop_A.add_person_to_queue(@person_A)
    assert_equal(1, @stop_A.queue.length())
  end









end
