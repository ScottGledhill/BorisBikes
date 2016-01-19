class DockingStation
  include BikeContainer
  attr_reader :capacity
  def initialize(capacity=20)
    setup_container
    @capacity = capacity
  end

  def collect_bikes(van)
    van.bike_holder.each do |bike|
      @container << bike if bike.working?
    end
  end

  def docked
    raise "Error! No bike present! :(" if empty?
    @container
  end

  def release_bike (bike)
    raise "Error! No bike present! :(" if empty?
    return false if bike.working? == false
    @container.delete(bike)
    bike
  end

  def dock(bike)
    raise "Error! no more docking!" if full?
    @container << bike
  end

  private

  def full?
    @container.length >= @capacity ? true : false
  end

  def empty?
    @container.empty?
  end
end
