class Department
  attr_reader :name,
              :employees,
              :expenses
  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
    @employee_expenses = 0
  end

  def hire(person)
    @employees << person
  end

  def expense(amt)
    @expenses += amt
  end

  def employee_expenses
    @employees.flat_map do |employee|
      employee.emp_expenses
    end.sum
  end

  def add_employee_expenses
    @expenses += employee_expenses
  end
end