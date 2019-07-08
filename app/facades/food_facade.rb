class FoodFacade
	def initialize(foods)
		@foods = foods	
	end

	def get_foods
		@foods.map do |food|
			Food.new(food)
		end
	end
end
