
class Van
  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def collect_bikes(dockingstation)
    @broken_bikes << dockingstation.bikes.select { |bike| bike if bike.working == false }
    @broken_bikes.flatten
  end
end
