require 'rails_helper'

describe Food, type: :model do
	it "exists" do
		expect(subject).to be_a(Food)
	end

	xit "has attributes" do 
#COME BACK AND ADD THIS, DREAM DRIVING PORO FOR TIME!
		expect(@food).to have_attributes(:name => "Jim", :age => 32)
	end
end
