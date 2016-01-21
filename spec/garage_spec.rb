require 'garage.rb'

describe Garage do

it 'delivers broken bikes to garage' do
station = DockingStation.new
bike1 = Bike.new
bike2 = Bike.new
garage = Garage.new
van = Van.new
station.dock(bike1)
station.dock(bike2)
van.collect_bikes(station)
expect(garage.deliver_broken_bikes_to_garage(van)).to eq van.broken_bikes
  end
end
