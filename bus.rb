class Bus

  attr_reader(:route_num, :destination)

  def initialize(route_num, destination)
    @route_num = route_num
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum, brum"
  end

  def count_passengers
    return @passengers.length()
  end

  def pickup(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)

  end

end
