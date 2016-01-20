require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'raises error if no bikes are available' do
    expect { subject.release_bike }.to raise_error "No available bikes"
  end

  it {is_expected.to respond_to :dock}
  it 'docks a bike' do
    test_bike = Bike.new
    expect(subject.dock(test_bike)).to eq test_bike
  end

  it {is_expected.to respond_to :bike}
  it 'returns docked bike' do
    test_bike = Bike.new
    subject.dock(test_bike)
    expect(subject.bike).to eq test_bike
  end
end
