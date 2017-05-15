require 'statement'
describe Statement do
  log = [
    {
      date: '15-05-17',
      credit: 100,
      debit: 0,
      balance: 100
    }
  ]
  subject(:statement) { described_class.new(log) }

  it 'prints out the statement of the specified account' do
    expect(statement.display).to eq 'date || credit || debit || balance\n15-05-17 || 100.00 || 0.00 || 100.00'
  end
end
