require 'transaction_history'

describe TransactionHistory do
  subject { TransactionHistory.new(transaction_class) }
  let(:transaction_class) { spy('transaction_class') }

  it 'returns a list of transactions and starts off empty' do
    expect(subject.transaction_history).to be_empty
  end

  it 'records a new transaction' do
    expect(transaction_class).to receive(:new)
    subject.record_transaction(deposit: 1000, withdrawal: nil, balance: 1000)
  end
end
