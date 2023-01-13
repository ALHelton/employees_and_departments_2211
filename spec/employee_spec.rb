require './lib/employee'

RSpec.describe Employee do
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }


  describe "#initialize" do
    it "exists" do
      expect(bobbi).to be_an_instance_of(Employee)
    end

    it "attributes" do
      expect(bobbi.name).to eq("Bobbi Jaeger")
      expect(bobbi.age).to eq(30)
      expect(bobbi.salary).to eq(100000)
    end
  end

  describe "#give_raise and #salary" do
    it "adds to salary and gives a total sum" do
      bobbi.give_raise(5000)
      expect(bobbi.salary).to eq(105000)
    end
  end

  describe "#emp_expenses and #make_expense" do
    it "employee makes expense and adds to an array of their expenses" do
      expect(employee.emp_expenses).to eq([])

      bobbi.make_expense(45)
      bobbi.make_expense(10)
      expect(employee.emp_expenses).to eq([45, 10])
    end
  end
end