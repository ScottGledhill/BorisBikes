require 'DockingStation'

describe DockingStation do

  let(:bike) {double :bike}
  it 'allows the release of working bikes' do
    allow(bike).to receive(:working?).and_return (true)
    subject.dock(bike)
    released_bike = subject.release_bike(bike)
    expect(released_bike.working?).to eq true
  end

  it 'returns false when attempt is made to release broken biike' do
    allow(bike).to receive(:working?).and_return (false)
    station = DockingStation.new
    station.dock(bike)
    expect(station.release_bike(bike)).to eq false
  end

  it {is_expected.to respond_to (:release_bike)}

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "expects error when no bike present" do
    expect{DockingStation.new.docked}.to raise_error
  end

  it "release_bike error if no bike" do
    expect{DockingStation.new.release_bike}.to raise_error
  end

  it "dock has capacity for 20 bikes" do
    new_station = DockingStation.new
    expect{20.times { new_station.dock double(:bike) }}.to_not raise_error
   end

   it "allow user to set capacity" do
     station = DockingStation.new
     expect(station.capacity).to eq 20
   end

   it "allow user to set capacity" do
     station = DockingStation.new (5000)
     expect(station.capacity).to eq 5000
   end

end
