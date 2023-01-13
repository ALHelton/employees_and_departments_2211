require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  let(:budget) { Budget.new("2022") }

  describe "#initialize" do
    it "exists" do
      expect(budget).to be_an_instance_of(Budget)
    end

    it "attributes" do
      expect(budget.year).to eq("2022")
    end
  end
end