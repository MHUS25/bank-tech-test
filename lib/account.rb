class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit, date = transaction_date)
    @balance += deposit
  end

  def debit(withdrawal, date = transaction_date)
    raise "Insufficient funds" if withdrawal > @balance
    @balance -= withdrawal
  end

  private

  def transaction_date
    Time.now.strftime("%d/%m/%Y")
  end
end
