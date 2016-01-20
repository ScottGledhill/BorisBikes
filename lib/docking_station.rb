require_relative 'bike'

class DockingStation
  attr_reader :bike, :capacity

	def initialize
		@bike 
    @capacity = 20
	end

  def release_bike
   fail "No available bikes" if not @bike
    @bike
  end

  def dock(bike)
    fail 'Docking station is full' if @capacity >= 20
  	@bike = bike
  end
end
