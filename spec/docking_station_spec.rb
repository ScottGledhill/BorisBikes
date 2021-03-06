require "docking_station"

describe DockingStation do

  describe 'initialize' do
    it 'tests variable capacity' do
      expect(DockingStation.new(25).capacity).to eq 25
    end

    it 'tests default capacity' do
      expect(subject.capacity).to eq 20
    end
  end

  describe '#release_bike' do
    let(:bike) {Bike.new}
    it { is_expected.to respond_to :release_bike }
    it 'releases a working bike' do
      subject.dock(bike)
      expect(subject.release_bike.working).to be_truthy
    end
    it 'does not release broken bikes' do
      bike.broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "No working bikes available"
    end
    it 'raises an error if no bikes are available' do
      expect { subject.release_bike }.to raise_error "No available bikes"
    end
  end

  describe '#dock' do
    it {is_expected.to respond_to :dock}
    test_bike = Bike.new
    it 'docks a bike' do
      subject.dock(test_bike)
      expect(subject.bikes.include? test_bike).to be_truthy
    end

    it 'raises an error if the station is full' do
      expect {(subject.capacity + 1).times { subject.dock(Bike.new) } }.to raise_error('Docking station is full')
    end
  end

  describe '#bikes' do
    it {is_expected.to respond_to :bikes}

    it 'returns docked bike' do
      subject.dock(Bike.new)
      expect(subject.bikes.size).to eq 1
    end
  end
end
