# Prints statement of an account's transactions
class Statement
  def initialize(log)
    @log = log
  end

  def print
    divider = ' || '
    list = ['credit || debit || balance']
    @log.each do |transaction|
      list << sprintf('%.2f', transaction[:credit]) + divider + sprintf('%.2f', transaction[:debit]) + divider + sprintf('%.2f', transaction[:balance])
    end
    list.join('\n')
  end
end
