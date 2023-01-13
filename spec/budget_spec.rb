require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  let(:budget) { Budget.new("2022") }
  let(:customer_service) { Department.new("Customer Service") }
  let(:sales) { Department.new("Sales") }
  let(:marketing) { Department.new("Marketing") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:andra) { Employee.new({name: "Andra Helton", age: "29", salary: "$5809000"}) }
  let(:james) { Employee.new({name: "James Taylor", age: "28", salary: "$4005000"}) }


  describe "#initialize" do
    it "exists" do
      expect(budget).to be_an_instance_of(Budget)
    end

    it "attributes" do
      expect(budget.year).to eq("2022")
    end
  end

  describe "#departments and #add_department" do
    it "lists departments in array" do
      expect(budget.departments).to eq([])

      budget.add_department(customer_service)
      budget.add_department(sales)
      budget.add_department(marketing)

      expect(budget.departments).to eq([customer_service, sales, marketing])
    end
  end

  describe "#low_expenses" do
    it "lists all depts with expenses < $500" do
      budget.add_department(customer_service)
      budget.add_department(sales)
      budget.add_department(marketing)

      customer_service.expense(100)
      sales.expense(400)
      marketing.expense(2000)

      expect(budget.low_expenses).to eq([customer_service, sales])
    end
  end

  describe "#employee_salaries" do
    it "lists all employees' salaries in array" do
      expect(budget.employee_salaries).to eq([])

      budget.add_department(customer_service)
      budget.add_department(sales)
      budget.add_department(marketing)

      customer_service.hire(bobbi)
      sales.hire(james)
      marketing.hire(andra)

      expect(budget.employee_salaries).to eq([100000, 4005000, 5809000])
    end
  end

  describe "#match_expense" do
    xit "track which employee is responsible for expense" do
      budget.add_department(customer_service)
      budget.add_department(sales)
      budget.add_department(marketing)

      customer_service.hire(bobbi)
      sales.hire(james)
      marketing.hire(andra)


    end
  end
end