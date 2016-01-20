require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No available bikes" if empty?

    for i in 0...@bikes.size
      bike = @bikes[i]
      return @bikes.delete(bike) if bike.working
    end
    fail "No working bikes available"
  end

  def dock(bike)
    fail 'Docking station is full' if full?
  	@bikes << bike
  end

  private

  def full?
    @bikes.size >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
