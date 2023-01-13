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
end