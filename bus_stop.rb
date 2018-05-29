class BusStop

  attr_reader :name, :queue

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

  def empty_queue()
    @queue = []
  end

end
