# Bank account object that stores value that is withdrawable/depositable
class BankAccount
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def statement
    balance
  end

  # private

end
