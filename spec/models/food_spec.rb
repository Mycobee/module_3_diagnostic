require 'rails_helper'

describe Food, type: :model do
	it "exists" do
		expect(subject).to be_a(Food)
	end

	it "has attributes" do 
		attributes = ({ndbno: "test_1", name: "test_2", group: "test_3", ds: "test_4", manu: "test_5"})
		food = Food.new(attributes)
		expect(food.ndbnum).to eq("test_1")
		expect(food.name).to eq("test_2")
		expect(food.group).to eq("test_3")
		expect(food.datasrc).to eq("test_4")
		expect(food.manufacturer).to eq("test_5")
	end
end
