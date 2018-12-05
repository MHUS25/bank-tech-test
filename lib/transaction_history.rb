class TransactionHistory

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def record_transaction(deposit:, withdrawal:, balance:)
    transaction = Transaction.new
    @transaction_history << transaction(deposit: deposit,
                                              withdrawal: withdrawal,
                                              balance: balance
                                                )
  end
end
