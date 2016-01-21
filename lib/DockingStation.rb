require_relative 'bike'

class DockingStation

attr_reader :bikes, :capacity

DEFAULT_CAPACITY=20

def initialize(capacity=DEFAULT_CAPACITY)
	@bikes = []
	@capacity = capacity
end

	def release_bike
    fail "No bikes available" if empty?
  		for i in 0...@bikes.size
      bike = @bikes[i]
      return @bikes.delete_at(i) if bike.working
		end
		fail "The bike is not working"
	end


	def dock(bike)
		fail 'Docking station full' if full?
		@bikes << bike

	end

	private

	def full?
		@bikes.count >= capacity
	end

	def empty?
		@bikes.empty?
	end
end
