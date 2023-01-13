require './lib/department'
require './lib/employee'

RSpec.describe Department do
  let(:customer_service) { Department.new("Customer Service") }
  
  describe "#initialize" do
    it "exists" do
      expect(customer_service).to be_an_instance_of(Department)
    end

    it "attributes" do
      expect(customer_service.name).to eq("Customer Service")
      expect(customer_service.employees).to eq([])
    end
  end
end