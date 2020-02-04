class Transfer
  # your code here
  attr_accessor :status 
  attr_reader :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  def valid?
    if (@sender.valid? && @receiver.valid?)
      return true 
    else 
      return false 
    end 
  end 
  def execute_transaction
    if((@status != "complete") && (@sender.balance >= @amount) && self.valid?) 
      @sender.balance -= amount 
      @receiver.balance += amount 
      @status = "complete"
    else 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  def reverse_transfer 
  end 
end
