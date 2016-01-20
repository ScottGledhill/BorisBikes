require_relative 'bike'

class DockingStation
  attr_reader :bike

	def initialize
		@bike
	end

  def release_bike
   raise "No available bikes" if not @bike
    @bike
  end

  def dock(bike)
  	@bike = bike
  end
end
