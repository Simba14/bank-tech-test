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
      expect { account.deposit }.to change { account.balance }.by 100
    end
  end
end
