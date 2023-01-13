require './lib/department'
require './lib/employee'

RSpec.describe Department do
  let(:customer_service) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }



  describe "#initialize" do
    it "exists" do
      expect(customer_service).to be_an_instance_of(Department)
    end

    it "attributes" do
      expect(customer_service.name).to eq("Customer Service")
      expect(customer_service.employees).to eq([])
    end
  end

  describe "#hire" do
    it "adds person to employees array" do
      customer_service.hire(bobbi)
      customer_service.hire(aaron) 

      expect(customer_service.employees).to eq([bobbi, aaron])
    end
  end

  describe "#expenses and #expense" do
    it "keeps count of expenses and adds amount" do
      expect(customer_service.expenses).to eq(0)

      customer_service.expense(100)
      customer_service.expense(25)
      expect(customer_service.expenses).to eq(125)
    end
  end

  describe "#employee_expense" do
    it "adds employee expenses to the total expenses amount for the dept" do
      customer_service.hire(bobbi)
      customer_service.hire(aaron) 

      bobbi.make_expense(45)
      bobbi.make_expense(10)
      aaron.make_expense(20)

      expect(customer_service.expenses).to eq(75)
    end
  end
end