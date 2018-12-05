class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction_history = TransactionHistory.new)
    @balance = 0
    @transaction_history = transaction_history
  end

  def credit(deposit)
    raise 'Cannot deposit negative amount' if deposit < 0

    @balance += deposit
    transaction_history.record_transaction(deposit: deposit, withdrawal: nil, balance: @balance)
  end

  def debit(withdrawal)
    raise 'Cannot withdraw negative amount' if withdrawal < 0
    raise 'Insufficient funds' if withdrawal > @balance

    @balance -= withdrawal
    transaction_history.record_transaction(deposit: nil, withdrawal: withdrawal, balance: @balance)
  end

  def print_statement(statement = Statement.new)
    statement.view_statement(@transaction_history)
  end

  private

  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
