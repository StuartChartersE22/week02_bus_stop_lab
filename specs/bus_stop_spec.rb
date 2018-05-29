require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("Stuart", 26)
    @passenger2 = Person.new("Iona", 27)
    @bus_stop1 = BusStop.new("Prince's street")
  end

  def test_bus_stop_name
    assert_equal("Prince's street", @bus_stop1.name())
  end

  def test_queue_count
    assert_equal(0, @bus_stop1.length_of_queue())
  end

  def test_add_person_to_queue
    @bus_stop1.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop1.length_of_queue())
  end

  def test_empty_queue
    @bus_stop1.add_to_queue(@passenger1)
    @bus_stop1.add_to_queue(@passenger2)
    @bus_stop1.empty_queue()
    assert_equal(0, @bus_stop1.length_of_queue())
  end

end
