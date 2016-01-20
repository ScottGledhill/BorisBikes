require "bike"

describe Bike do
	describe 'initialize' do
		it 'defaults to working' do
			expect(subject.working).to be_truthy
		end
	end
	it { is_expected.to respond_to :working}

	describe '#broken' do
		it 'flags a bike as broken' do
			subject.broken
			expect(subject.working).to be_falsey
		end
	end
end
