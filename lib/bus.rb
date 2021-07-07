class Bus

  attr_reader :name, :capacity, :passengers, :kick_out
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
    @kick_out = kick_out
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
  end

  def number_of_passengers
    @passengers.length
  end

  # def yell_at_passengers
  #   upcase = []
  #   passengers.each do |pass_name|
  #   upcase << pass_name.upcase
  #   end
  # end

  def over_capacity?
    if passengers.length < 5
      return false
    else
      return true
    end
  end

  def kick_out
    if number_of_passengers > 4
      passengers.shift
    end
  end
end
