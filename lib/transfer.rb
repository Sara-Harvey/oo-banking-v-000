class Transfer
attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  sender.valid? == true && receiver.valid? == true
end

def execute_transaction
  if @sender.balance > amount && @status == "pending"
    
  
    
    && if self.sender.balance > self.amount == true
      self.sender.balance -= amount
      self.receiver.deposit(amount)
      self.status = "complete"
  else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
end
end