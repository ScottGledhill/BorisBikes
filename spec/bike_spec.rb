require 'bike.rb'

describe Bike do
  describe 'working' do
    it {is_expected.to respond_to :working}
end

  describe 'broken' do
  it 'check if bike can become broken' do
      subject.broken
      expect(subject.working).to eq false
    end
  end
end
