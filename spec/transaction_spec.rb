require 'transaction'
describe Transaction do
  new_balance = 1000
  value = 100
  subject(:credit) { described_class.new(value, new_balance) }
  subject(:debit) { described_class.new(-value, new_balance) }

  context 'is a credit' do
    it 'records the amount credited' do
      expect(credit.details[:credit]).to eq 100
    end

    it 'records the amount debited' do
      expect(credit.details[:debit]).to eq 0
    end

    it 'records the new balance' do
      expect(credit.details[:balance]).to eq 1000
    end
  end

  context 'is a debit' do
    it 'records the amount credited' do
      expect(debit.details[:credit]).to eq 0
    end

    it 'records the amount debited' do
      expect(debit.details[:debit]).to eq 100
    end

    it 'records the new balance' do
      expect(debit.details[:balance]).to eq 1000
    end
  end
end
