require 'account'

describe Account do
  subject(:account) {described_class.new}

  context 'deposit' do
    it 'should be able to deposit and add to the existing balance' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end

    it 'should keep a log of the details when a deposit is made' do
      subject.deposit(1000)
      expect(subject.activity).to eq(["#{Time.now.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00"])
    end
  end

  context 'withdraw' do
    it 'should be able to withdraw and subtract from the existing balance' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end

    it 'should keep a log of the date when a deposit and withdrawal is made' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.activity).to eq(["#{Time.now.strftime("%d/%m/%Y")} || || 500.00 || 500.00", "#{Time.now.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00"])
    end
  end

  context 'printing the statement' do
    it 'should return the relevant informaton - formatted' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.statement).to eq("date || credit || debit || balance" + "\n" + "#{Time.now.strftime("%d/%m/%Y")} || || 500.00 || 500.00" + "\n" + "#{Time.now.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00" + "\n")
    end
  end

end
