class Account
  STARTING_BALANCE = 0

  attr_reader :balance, :activity

  def initialize(balance = STARTING_BALANCE)
    @balance = balance
    @activity = []
  end

  def deposit(amount)
    @balance += amount
    @activity.unshift("#{Time.now.strftime("%d/%m/%Y")} || #{amount}.00 || || #{@balance}.00")
  end

  def withdraw(amount)
    @balance -= amount
    @activity.unshift("#{Time.now.strftime("%d/%m/%Y")} || || #{amount}.00 || #{@balance}.00")
  end

  def statement
    return "date || credit || debit || balance" + "\n" + "#{@activity.each {|x|}.join("\n")}" + "\n"
  end

end
