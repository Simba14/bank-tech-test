require 'bank_account'
describe BankAccount do
  subject(:account) { described_class.new }

  it 'initializes with a balance of 0' do
    expect(account.balance).to eq 0
  end

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
      expect(account.log).to eq [{ date: "15-05-17", credit: 100, debit: 0, balance: 100.0 }]
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
      expect(account.log).to eq [{date: '15-05-17', credit: 100, debit: 0, balance: 100.0 }, {date: '15-05-17', credit: 0, debit: 100, balance: 0.0 }]
    end
  end

  describe '#print_statement' do
    before do
      account.deposit(1000)
      account.withdraw(300)
      account.deposit(200)
    end

    it 'displays the transacation history of the account' do
      expect(account.print_statement).to eq 'date || credit || debit || balance\\n15-05-17 || 1000.00 || 0.00 || 1000.00\\n15-05-17 || 0.00 || 300.00 || 700.00\\n15-05-17 || 200.00 || 0.00 || 900.00'
    end
  end
end
