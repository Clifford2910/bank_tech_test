class Display
  # attr_accessor :activity

  def initialize
    @activity = []
  end

  def prepend(transaction)
    @activity.unshift(transaction)
  end

  def show
    'date || credit || debit || balance' + "\n" + "#{@activity.each { |x| }.join("\n")}" + "\n"
  end
end
