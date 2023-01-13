class Budget
  attr_reader :year,
              :departments,
              :total_expenses
  def initialize(year)
    @year = year
    @departments = []
    @total_expenses = 0
  end

  def add_department(dept)
    @departments << dept
  end

  def low_expenses
    @departments.select do |department|
      department if department.expenses < 500
    end
  end

  def employee_salaries
    @departments.flat_map do |department|
      department.employees.map do |employee|
        employee.salary
      end
    end
  end

  def sum_expenses(department)
    @total_expenses += ( department.expenses + department.employee_expenses )
  end
  
end