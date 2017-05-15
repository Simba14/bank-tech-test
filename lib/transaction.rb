# Records the amount credited/debited and the new balance
class Transaction
  attr_reader :value, :details
  def initialize(value, new_balance)
    @details = { credit: 0, debit: 0, balance: new_balance }
    @value = value
    debit_or_credit?
  end

  private

  attr_writer :details

  def debit_or_credit?
    value < 0 ? debit : credit
  end

  def debit
    details[:debit] = -value
  end

  def credit
    details[:credit] = value
  end
end
