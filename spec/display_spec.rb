require 'account'
require 'display'

describe Display do
  subject(:display) { described_class.new }

  context 'Testing #show' do
    it 'can show a single entry' do
      subject.activity = ["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"]
      expect(subject.show).to eq('date || credit || debit || balance' + "\n" + "#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00" + "\n")
    end

    it 'should keep a log of the date when a deposit and withdrawal is made' do
      subject.activity = ["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00", "#{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 500.00"]
      expect(subject.show).to eq('date || credit || debit || balance' + "\n" + "#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00" + "\n" + "#{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 500.00" + "\n")
    end
  end
end
