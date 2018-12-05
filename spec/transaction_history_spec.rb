require 'transaction_history'

describe TransactionHistory do
  let(:transaction_class) { double :transaction_class }
  subject { TransactionHistory.new(transaction_class) }

  it 'returns a list of transactions and starts off empty' do
    expect(subject.transaction_history).to be_empty
  end

  it 'records a new transaction' do
    expect(transaction_class).to receive(:new).with(deposit: 1000, withdrawal: nil, balance: 1000)
    transaction = transaction_class
    allow(transaction).to receive(:transaction_data).and_return(date: @date,
                                                                credit: @deposit,
                                                                debit: @withdrawal,
                                                                balance: @balance)
    subject.record_transaction(deposit: 1000, withdrawal: nil, balance: 1000)
  end
end
