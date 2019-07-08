require 'rails_helper'

feature "As a user on the root path" do
	describe "I search for 'sweet potatoes' and click search" do
		it "takes me to the food path and shows items returned" do
			visit root_path

			fill_in('Search', with: 'sweet potatoes')		

			click_button('Search')

			expect(current_path).to eq(foods_path)

			within '.food-results' do 
				expect(page).to have_css(.result-ndbnum)
				expect(page).to have_css(.result-name)
				expect(page).to have_css(.result-group)
				expect(page).to have_css(.result-datasrc)
				expect(page).to have_css(.result-manufacturer)
			end
		end	
	end
end





#As a user,
#When I visit "/"
#And I fill in the search form with "sweet potatoes"
#(Note: Use the existing search form)
#And I click "Search"
#Then I should be on page "/foods"
#Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
#Then I should see a list of ten foods sorted by relevance.
#
#And for each of the foods I should see:
#- The food's NDB Number
#- The food's name
#- The food group to which the food belongs
#- The food's data source
#- The food's manufacturer
