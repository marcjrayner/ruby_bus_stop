class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "All Aboard!"
  end

  def passenger_starts_empty()
    return @passengers.length
  end

  def passenger_count()
    @passengers.count()
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty()
    @passengers.clear
  end

  def pick_up_from_stop(stop)
    for person in stop.queue()
      @passengers.push(person)
      queue.delete(person)
    end
  end




end
