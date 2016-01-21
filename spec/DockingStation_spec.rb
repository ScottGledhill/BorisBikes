require 'DockingStation.rb'

describe DockingStation do

it {is_expected.to respond_to :release_bike}

describe 'initialize' do
	it 'initializes with a capacity' do
		station = DockingStation.new(40)
		expect(station.capacity).to eq 40
	end

	it 'initializes with a default capacity of 20' do
		expect(subject.capacity).to eq 20
	end
end

describe '#dock' do
	it 'docks a bike' do
		bike = double(:bike)
		bikes = [bike]
		expect(subject.dock(bike)).to eq bikes
	end

describe '#dock' do
	it 'raises an error when full' do
		subject.capacity.times { subject.dock double(:bike) }
		expect { subject.dock(double(:bike)) }.to raise_error 'Docking station full'
	end
end


	it 'raises an error when there are no bikes available' do
		expect { subject.release_bike }.to raise_error 'No bikes available'
	end

	it "doesn't release broken bikes" do
		bike = double(:bike)
		bike.broken
		subject.dock(bike)
		bike2 = double(:bike)
		subject.dock(bike2)
		expect(subject.release_bike).to eq bike2
	end
	end
end
