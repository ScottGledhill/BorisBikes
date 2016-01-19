
class Vans
  include BikeContainer
  attr_reader :container
  def add_bike bike
    @container << bike
  end

  def initialize
    setup_container
  end

  def take_broken(docking_station)
    docking_station.docked.each do
      |bike| @container << bike if not bike.working?
    end
  end
end
