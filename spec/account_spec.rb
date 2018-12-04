require 'account'

describe Account do
  it 'increases balance when a deposit is made' do
    account = Account.new
    account.credit(1000)
    expect(account.balance).to eq 1000
  end

  it 'decreases balance when a withdrawal is made' do
    account = Account.new
    account.credit(3000)
    account.debit(500)
    expect(account.balance).to eq 2500
  end

  it 'raises an error when there are insufficient for a withdrawal' do
    account = Account.new
    account.credit(300)
    expect{account.debit(500)}.to raise_error "Insufficient funds"
  end

  it 'records transactions' do
    account = Account.new
    account.credit(1000)
    account.credit(2000)
    account.debit(500)
    expect(account.transaction_history.length).to eq 3
  end
end
