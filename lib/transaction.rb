class Transaction

  def initialize(deposit:, withdrawal:, balance:)
    @date = Time.now.strftime('%d/%m/%Y')
    @deposit = deposit
    @withdrawal = withdrawal
    @balance = balance
  end

  def transaction_data
    # [@date, @deposit, @withdrawal, @balance]
    { date: @date,
                              credit: @deposit,
                              debit: @withdrawal,
                              balance: @balance }

  end
end
