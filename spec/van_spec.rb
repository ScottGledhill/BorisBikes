require 'van.rb'

describe Van do

  let(:docking_station) { double :docking_station }

    describe 'responds to collect bikes' do
    it {is_expected.to respond_to(:collect_bikes).with(1).argument}
  end

  it 'collects broken bikes from a docking station' do
    bike1 = Bike.new
    bike2 = Bike.new
    bike3 = Bike.new
    bike1.broken
    bike2.broken
    station = DockingStation.new
    station.dock(bike1)
    station.dock(bike2)
    station.dock(bike3)
    expect(subject.collect_bikes(station)).to eq [bike1, bike2]
  end
end
  # it 'collects broken bikes and adds to van' do
  #   subject.collect_bikes
  #   expect(bike).to not be_working
  # end
