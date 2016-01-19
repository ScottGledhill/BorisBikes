

class Garage
  include BikeContainer
  attr_reader :container
  def initialize
    setup_container
  end

  def get_bikes(van)
    van.bike_holder.each do |bike|
      @container << bike if not bike.working?
    end
  end
end
