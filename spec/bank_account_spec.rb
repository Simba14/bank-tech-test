require 'bank_account'
describe BankAccount do

  let(:transactions) { double :transactions }
  let(:statement) { double :statement, new: nil, display: transactions}
  subject(:account) { described_class.new(statement: statement) }

  it 'initializes with a balance of 0' do
    expect(account.balance).to eq 0
  end

  before { @date = Date.today.strftime('%d-%m-%y')}

  describe '#deposit' do
    it 'deposits money to an account' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'increases the balance by the amount deposited' do
      expect { account.deposit(100) }.to change { account.balance }.by 100
    end

    it 'logs the deposited amount and new balance' do
      account.deposit(100)
      expect(account.log).to eq [{ date: @date, credit: 100, debit: 0, balance: 100.0 }]
    end
  end

  describe '#withdraw' do
    before { account.deposit(100) }
    it 'withdraws money from an account' do
      account.withdraw(100)
      expect(account.balance).to eq 0
    end

    it 'decreases the balance by the amount withdrawn' do
      expect { account.withdraw(50) }.to change { account.balance }.by(-50)
    end

    it 'logs the withdrawn amount and new balance' do
      account.withdraw(100)
      expect(account.log).to eq [{date: @date, credit: 100, debit: 0, balance: 100.0 }, {date: @date, credit: 0, debit: 100, balance: 0.0 }]
    end
  end

  describe '#print_statement' do

    it 'displays the transacation history of the account' do
      account.deposit(1000)
      account.withdraw(300)
      account.deposit(200)
      expect(account.print_statement).to eq nil
    end
  end
end
