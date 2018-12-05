require 'transaction_history'

describe TransactionHistory do
  let(:transaction_class) { double :transaction_class }
  subject { TransactionHistory.new(transaction_class) }

  it 'returns a list of transactions and starts off empty' do
    expect(subject.transaction_history).to be_empty
  end

  # it 'records a new transaction' do
  #   expect(transaction_class).to receive(:new).with(deposit: 1000, withdrawal: nil, balance: 1000)
  #   subject.create_transaction(deposit: 1000, withdrawal: nil, balance: 1000)
    # expect(transaction).to eq(transaction_class)
    # allow(transaction).to receive(:transaction_data).and_return({ date: @date,
      # credit: @deposit,
      # debit: @withdrawal,
      # balance: @balance })
    # expect(subject.transaction_history).to eq(1)
  # end
end
