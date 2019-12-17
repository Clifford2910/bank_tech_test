require_relative 'display'

class Account
  STARTING_BALANCE = 0

  attr_reader :balance

  def initialize(balance = STARTING_BALANCE, display = Display.new)
    @balance = balance
    @display = display
  end

  def deposit(amount)
    @balance += amount
    @display.activity.unshift("#{Time.now.strftime('%d/%m/%Y')} || #{amount}.00 || || #{@balance}.00")
  end

  def withdraw(amount)
    @balance -= amount
    @display.activity.unshift("#{Time.now.strftime('%d/%m/%Y')} || || #{amount}.00 || #{@balance}.00")
  end

  def statement
    return @display.show
  end
end
