# Prints statement of an account's transactions
class Statement
  def initialize(log)
    @log = log
  end

  def print
    divider = ' || '
    list = ['date || credit || debit || balance']
    @log.each do |transaction|
      details = []
      details.push(transaction.values)
      line = details[0].map{ |x| x % 1 == 0 ? sprintf('%.2f', x) : x }.join(divider)
      list << line
      puts list
    end
    list.join('\n')
  end

end
