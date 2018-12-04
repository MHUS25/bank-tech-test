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
end
