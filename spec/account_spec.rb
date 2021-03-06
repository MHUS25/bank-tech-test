require 'account'

describe Account do
  let(:statement) { double :statement }

  describe 'credit' do
    it 'increases balance when a deposit is made' do
      account = Account.new
      account.credit(1000)
      expect(account.balance).to eq 1000
    end

    it 'raises an error when a negative amount is deposited' do
      account = Account.new
      expect { account.credit(-100) }.to raise_error 'Cannot deposit negative amount'
    end
  end

  describe 'debit' do
    it 'decreases balance when a withdrawal is made' do
      account = Account.new
      account.credit(3000)
      account.debit(500)
      expect(account.balance).to eq 2500
    end

    it 'raises an error when there are insufficient for a withdrawal' do
      account = Account.new
      account.credit(300)
      expect { account.debit(500) }.to raise_error 'Insufficient funds'
    end

    it 'raises an error when a negative amount is withdrawn' do
      account = Account.new
      expect { account.debit(-100) }.to raise_error 'Cannot withdraw negative amount'
    end
  end

  describe 'transaction_history' do
    it 'has a history of transactions' do
      account = Account.new
      account.credit(1000)
      account.credit(2000)
      account.debit(500)
      expect(account.transaction_history).not_to be_nil
    end
  end

  describe 'print_statement' do
    it 'prints account statment' do
      account = Account.new
      expect(statement).to receive(:view_statement)
      account.print_statement(statement)
    end
  end
end
