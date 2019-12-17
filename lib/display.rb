class Display
  attr_accessor :activity

  def initialize
    @activity = []
  end

  def show
    return 'date || credit || debit || balance' + "\n" + "#{@activity.each { |x| }.join("\n")}" + "\n"
  end
end
