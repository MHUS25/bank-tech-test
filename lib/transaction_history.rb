# responsible for recording transactions
class TransactionHistory
  attr_reader :transaction_history

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @transaction_history = []
  end

  def record_transaction(deposit:, withdrawal:, balance:)
    transaction = @transaction_class.new(deposit: deposit,
                                         withdrawal: withdrawal,
                                         balance: balance)
    @transaction_history << transaction.transaction_data
  end
end
