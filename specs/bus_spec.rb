require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("Stuart", 26)
    @passenger2 = Person.new("Iona", 27)
    @bus_stop1 = BusStop.new("Prince's street")
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  def test_bus_has_route_number
    assert_equal(22, @bus1.route_num())
  end

  def test_bus_can_drive
    assert_equal("Brum, brum", @bus1.drive())
  end

  def test_bus_passenger_count
    assert_equal(0, @bus1.count_passengers)
  end

  def test_bus_pickup
    @bus1.pickup(@passenger1)
    assert_equal(1, @bus1.count_passengers())
  end

  def test_bus_drop_off
    @bus1.pickup(@passenger2)
    @bus1.drop_off(@passenger2)
    assert_equal(0, @bus1.count_passengers())
  end

  def test_bus_empty
    @bus1.pickup(@passenger1)
    @bus1.pickup(@passenger2)
    @bus1.empty()
    assert_equal(0, @bus1.count_passengers)
  end

  def test_pick_up_from_stop
    @bus_stop1.add_to_queue(@passenger1)
    @bus1.pick_up_from_stop()
    @bus_stop1.empty()
    assert_equal(1, @bus1.count_passengers())
  end
end
