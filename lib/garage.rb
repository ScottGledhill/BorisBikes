class Garage
  def deliver_broken_bikes_to_garage(van)
    @broken_bikes = van.broken_bikes
  end

  def fix_bikes
    @broken_bikes.each do |bike|
      bike.working = true
    end
  end
end
