require 'account'

describe Account do

  it 'increases balance when a deposit is made' do
    account = Account.new
    account.credit(1000)
    expect(account.balance).to eq 1000
  end

end
