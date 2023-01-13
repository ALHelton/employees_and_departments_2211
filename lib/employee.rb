class Employee
  attr_reader :name,
              :age,
              :salary,
              :emp_expenses
  def initialize(info)
  @name = info[:name]
  @age = info[:age].to_i
  @salary = info[:salary].delete("$").to_i
  @emp_expenses = []
  end

  def give_raise(amount)
    @salary += amount
  end

  def make_expense(amt)
    @emp_expenses << amt
  end
end