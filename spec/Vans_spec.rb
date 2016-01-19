require 'vans'
require 'DockingStation'
require 'bikes'
require 'garage'

describe Vans do

  it "accepts broken bikes" do
    bike1 = Bikes.new
    bike2 = Bikes.new
    bike1.report_broken
    bike2.report_broken
    station = DockingStation.new
    station.dock(bike1)
    station.dock(bike2)
    van = Vans.new
    van.take_broken(station)
    garage = Garage.new
    garage.get_bikes(van)
    expect(garage.bike_storage).to eq [bike1, bike2]
  end

  it "yields working bikes to docking stations" do
    bike1 = Bikes.new
    bike2 = Bikes.new
    bike3 = Bikes.new
    bike3.report_broken
    station = DockingStation.new
    van = Vans.new
    van.add_bike bike1
    van.add_bike bike2
    van.add_bike bike3
    station.collect_bikes van
    expect(station.docked).to eq [bike1, bike2]
  end
end
