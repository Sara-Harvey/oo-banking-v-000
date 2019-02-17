class Transfer
attr_accessor :status, :sender, :receiver, :amount, :bankaccount, :deposit

def initialize(sender, receiver, amount)
  @status = "pending"
  @sender = sender
  @receiver = receiver
  @amount = amount
end

def valid?
  sender.valid? == true && receiver.valid? == true
end

def execute_transaction
  if self.valid? && self.status = "pending"
  self.sender.balance -= amount
  self.receiver.deposit(amount)
  self.status = "complete"
else
  self.status = "rejected"
end
end
end  