class Department
  attr_reader :name,
              :employees
  def initialize(name)
    @name = name
    @employees = []
  end

  def hire(person)
    @employees << person
  end
end