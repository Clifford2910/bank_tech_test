require 'account'

describe Account do
  subject(:account) {described_class.new}

  context 'starting balance' do
    it 'should have zero as a starting balance' do
      expect(subject.balance).to eq(0.00)
    end
  end

end
