class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit)
    @balance += deposit
  end

  def debit(withdrawal)
    raise "Insufficient funds" if withdrawal > @balance
    @balance -= withdrawal
  end
end
