require_relative 'bike'

class DockingStation
  attr_reader :bike

	def initialize
		@bike = nil
	end

  def release_bike
    fail "No available bikes" if @bike == nil
    @bike
  end

  def dock(bike)
  	@bike = bike
  end
end
