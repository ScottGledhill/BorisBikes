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
		bike = Bike.new
		bikes = [bike]
		expect(subject.dock(bike)).to eq bikes
	end

describe '#dock' do
	it 'raises an error when full' do
		subject.capacity.times { subject.dock Bike.new }
		expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
	end
end

describe '#release_bike' do
	it 'releases a bike' do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end
end

	it 'raises an error when there are no bikes available' do
		expect { subject.release_bike }.to raise_error 'No bikes available'
	end

	it "doesn't release broken bikes" do
		bike = Bike.new
		bike.broken
		subject.dock(bike)
		expect { subject.release_bike }.to raise_error 'The bike is broken'
	end

	end
end
