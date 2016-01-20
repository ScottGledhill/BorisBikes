require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

	def initialize(capacity=20)
		@bikes = []
    @capacity = capacity
  end

  def release_bike
   fail "No available bikes" if empty?
    @bikes.pop
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
