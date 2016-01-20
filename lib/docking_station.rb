require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

	def initialize
		@bikes = []
    @capacity = 20
	end

  def release_bike
   fail "No available bikes" if @bikes.empty?
    @bikes
  end

  def dock(bike)
    fail 'Docking station is full' if @bikes.size >= 20
  	@bikes << bike
  end
end
