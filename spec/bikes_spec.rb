require 'bikes'

describe Bikes do

  it {is_expected.to respond_to(:working?)}

  it "reports broken bike" do
    bike = Bikes.new
    bike.report_broken
    expect(bike.working?).to be_falsey
  end
end
