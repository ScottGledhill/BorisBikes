require 'vans.rb'

describe Vans do
    describe 'responds to collect bikes' do
    it {is_expected.to respond_to(:collect_bikes).with(1).argument}
  end
end
  # it 'collects broken bikes and adds to van' do
  #   subject.collect_bikes
  #   expect(bike).to not be_working
  # end
