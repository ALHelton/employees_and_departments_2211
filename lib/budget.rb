class Budget
  attr_reader :year,
              :departments
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(dept)
    @departments << dept
  end

  def low_expenses
    @departments.map do |department|
      department if department.expenses < 500
    end.compact
  end
end