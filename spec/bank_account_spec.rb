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
  end
end
