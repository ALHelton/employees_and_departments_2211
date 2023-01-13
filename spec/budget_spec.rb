require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  let(:budget) { Budget.new("2022") }
  let(:customer_service) { Department.new("Customer Service") }
  let(:sales) { Department.new("Sales") }
  let(:marketing) { Department.new("Marketing") }


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
end