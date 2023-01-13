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

  def match_expense
    exp_by_emp = Hash.new {|h,k| h[k] = [] }
    @departments.each do |dept|
      dept.employees.each do |employee|
        exp_by_emp[employee.name] = employee.emp_expenses
      end
    end
    exp_by_emp
  end
  
  def emp_exp_total
    emp_exp_total = Hash.new(0)
    @departments.each do |dept|
      dept.employees.each do |employee|
        emp_exp_total[employee.name] = employee.emp_expenses.sum
      end
    end
    emp_exp_total
  end
end