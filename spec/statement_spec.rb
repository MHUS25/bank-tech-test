require 'statement'

describe Statement do
  it 'returns a statement with a transaction' do
    transaction_history = [{ date: '04/12/2018', credit: 1000, debit: nil, balance: 1000 }]
    p transaction_history
    statement = Statement.new
    expect(statement.view_statement(transaction_history)).to eq "date || credit || debit || balance\n04/12/2018 || 1000.00 ||  || 1000.00"
  end

  it 'returns a statement with multiple transactions' do
    transaction_history = [{ date: '04/12/2018', credit: 1000, debit: nil, balance: 1000 }, { date: '05/12/2018', credit: 2000, debit: nil, balance: 3000 }, { date: '06/12/2018', credit: nil, debit: 1000, balance: 2000 }]
    statement = Statement.new
    expect(statement.view_statement(transaction_history)).to eq "date || credit || debit || balance\n06/12/2018 ||  || 1000.00 || 2000.00\n05/12/2018 || 2000.00 ||  || 3000.00\n04/12/2018 || 1000.00 ||  || 1000.00"
  end
end
