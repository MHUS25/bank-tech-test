require 'transaction'

describe Transaction do
  let(:date) { double :date }

  it 'returns transaction data' do
    allow(Time).to receive_message_chain(:now, :strftime).and_return(date)
    transaction = Transaction.new(deposit: 1000, withdrawal: nil, balance: 1000)
    expect(transaction.transaction_data).to eq [date, 1000, nil, 1000]
  end
end
