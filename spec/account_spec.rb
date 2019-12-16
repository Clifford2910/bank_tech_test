require 'account'

describe Account do
  subject(:account) {described_class.new}

  context 'starting balance' do
    it 'should have zero as a starting balance' do
      expect(subject.balance).to eq(0.00)
    end
  end

  context 'deposit' do
    it 'should be able to deposit and add to the existing balance' do
      expect(subject.balance).to eq(0)
      subject.deposit(1000.00)
      expect(subject.balance).to eq(1000.00)
    end

end
