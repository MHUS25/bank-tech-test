class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def credit(deposit, date = transaction_date)
    raise 'Cannot deposit negative amount' if 0 > deposit
    @balance += deposit
    @transaction_history << { date: date,
                              credit: deposit,
                              debit: nil,
                              balance: @balance }
  end

  def debit(withdrawal, date = transaction_date)
    raise 'Cannot withdraw negative amount' if 0 > withdrawal
    raise 'Insufficient funds' if withdrawal > @balance
    @balance -= withdrawal
    @transaction_history << { date: date,
                              credit: nil,
                              debit: withdrawal,
                              balance: @balance }
  end

  def print_statement(statement = Statement.new)
    statement.view_statement(@transaction_history)
  end

  private

  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
