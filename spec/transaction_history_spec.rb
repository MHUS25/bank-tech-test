require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { double(:transaction) }
  transaction_history = TransactionHistory.new

  it 'returns a list of transactions' do
    expect(subject.transaction_history).to be_empty
  end

  it 'creates a new transaction' do
    expect(transaction).to receive(:new).with(deposit: 1000, withdrawal: nil, balance: 1000)
    subject.record_transaction(deposit: 1000, withdrawal: nil, balance: 1000)
  end
end