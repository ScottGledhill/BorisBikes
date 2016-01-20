require "docking_station"

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    # it 'releases a working bike' do
    #   expect(subject.release_bike).to be_working
    # end
    it 'raises an error if no bikes are available' do
      expect { subject.release_bike }.to raise_error "No available bikes"
    end
  end

  describe '#dock' do
    it {is_expected.to respond_to :dock}
    it 'docks a bike' do
      test_bike = Bike.new
      expect(subject.dock(test_bike)).to eq test_bike
    end
  end

  describe '#bike' do
    it {is_expected.to respond_to :bike}
    it 'returns docked bike' do
      test_bike = Bike.new
      subject.dock(test_bike)
      expect(subject.bike).to eq test_bike
    end
  end
end
