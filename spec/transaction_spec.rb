require 'transaction'

describe Transaction do
  let(:date) { double :date }

  it 'returns transaction data' do
    allow(Time).to receive_message_chain(:now, :strftime).and_return(date)
    transaction = Transaction.new(deposit: 1000, withdrawal: nil, balance: 1000)
    expect(transaction.transaction_data).to eq({ :balance => 1000, :credit => 1000, :debit => nil, :date => date })
  end
end
