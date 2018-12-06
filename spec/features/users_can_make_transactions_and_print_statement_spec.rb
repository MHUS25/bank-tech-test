require 'account'
require 'statement'

describe 'Feature test' do
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  it 'returns a statement with all transactions' do
    account = Account.new
    account.credit(1000)
    account.credit(2000)
    account.debit(500)
    expect(account.print_statement).to eq "date || credit || debit || balance\n#{date} ||  || 500.00 || 2500.00\n#{date} || 2000.00 ||  || 3000.00\n#{date} || 1000.00 ||  || 1000.00"
  end
end
