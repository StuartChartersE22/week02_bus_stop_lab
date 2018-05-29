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

end
