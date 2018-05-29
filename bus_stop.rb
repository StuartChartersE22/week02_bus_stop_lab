class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def length_of_queue()
    return @queue.length()
  end

  def add_to_queue(passenger)
    @queue.push(passenger)
  end

end
