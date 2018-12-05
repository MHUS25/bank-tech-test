class TransactionHistory

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def record_transaction(deposit:, withdrawal:, balance:)
    transaction = Transaction.new(deposit: deposit,
                                              withdrawal: withdrawal,
                                              balance: balance
                                                )
    @transaction_history << transaction.transaction_data
  end
end
