class Department
  attr_reader :name,
              :employees,
              :expenses
  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
  end

  def hire(person)
    @employees << person
  end

  def expense(amt)
    @expenses += amt
  end

  def employee_expenses

    @employees.each do |employee|
      employee.emp_expenses.sum
    end
  end

  def add_employee_expenses
    @expenses << employee_expense
  end
end