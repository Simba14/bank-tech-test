# Bank account object that stores value that is withdrawable/depositable
class BankAccount
  attr_reader :balance, :log
  def initialize
    @balance = 0.00
    @log = []
  end

  def deposit(value)
    procedure(value)
  end

  def withdraw(value)
    procedure(-value)
  end

  def print_statement
    Statement.new(log).print
  end

  private

  attr_writer :balance

  def procedure(value)
    self.balance += value
    log << Transaction.new(value, self.balance).details
  end
end
