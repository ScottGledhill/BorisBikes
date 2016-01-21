
class Van
  attr_reader :bikes

  def initialize
    @broken_bikes = []
  end

  def collect_bikes(dockingstation)
    dockingstation.bikes.select { |bike| bike if bike.working == false }
  end
end
