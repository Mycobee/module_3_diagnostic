class FoodFacade
	def initialize(foods)
		@foods = foods	
	end

	def get_foods
		@foods.each do |food|
		binding.pry	
		end
	end
end
