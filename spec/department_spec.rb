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
end