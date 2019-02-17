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
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
end

def reverse_transfer
  @receiver.balance -= amount
  @sender.balance += amount
end
end