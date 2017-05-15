# Bank account object that stores value that is withdrawable/depositable
class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(value)
    procedure(value)
  end

  def withdraw(value)
    procedure(-value)
  end
  # private

  attr_writer :balance

  def procedure(value)
    self.balance += value
  end
end
