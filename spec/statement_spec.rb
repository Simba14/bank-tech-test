require 'statement'
describe Statement do
  log = [
    {
      credit: 100,
      debit: 0,
      balance: 100
    }
  ]
  subject(:statement) { described_class.new(log) }

  it 'prints out the statement of the specified account' do
    expect(statement.print).to eq 'credit || debit || balance\n100.00 || 0.00 || 100.00'
  end
end
