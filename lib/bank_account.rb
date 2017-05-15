# Bank account object that stores value that is withdrawable/depositable
class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(value)
    self.balance += value
  end

  def withdraw(value)
    self.balance -= value
  end
  # private

  attr_writer :balance
end
