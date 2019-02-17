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
  if self.valid? && self.status = "pending"
  self.sender.balance -= amount
  self.receiver.balance += amount
  self.status = "complete"
else
  self.status = "rejected"
  "Transaction rejected. Please check your account balance."
end
end
end  