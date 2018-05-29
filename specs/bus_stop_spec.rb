require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("Stuart", 26)
    @passenger2 = Person.new("Iona", 27)
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus_stop1 = BusStop.new("Prince's street")
  end

  def test_bus_stop_name
    assert_equal("Prince's street", @bus_stop1.name())
  end

end
