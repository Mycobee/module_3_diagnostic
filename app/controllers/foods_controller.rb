class FoodsController < ApplicationController
	def index 
###REFACTOR IN TO SERVICE AFTER FUNCTIONALITY IS COMPLETE
		search_request = params["q"]

		conn = Faraday.new(url: 'https://api.nal.usda.gov/ndb/search') do |faraday|
			faraday.adapter Faraday.default_adapter
			faraday.headers['X-Api-Key'] = ENV['GOV_DATA_API_KEY']
			faraday.params['format'] = 'json'
			faraday.params['q'] = search_request
		end
		
		response = conn.get

		foods = JSON.parse(response.body, symbolize_names: true)[:list][:item]
		render locals: {
			facade: FoodFacade.new(foods)
		}
	end
end
