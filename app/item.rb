require './app/batter.rb'
require './app/topping.rb'

class Item
	attr_reader :id,
							:type,
							:name,
							:ppu


	def initialize(data)
		@id = data["id"]
		@type = data["type"]
		@name = data["name"]
		@ppu = data["ppu"]
		@batters_data = data["batters"]["batter"]
		@toppings_data = data["topping"]
	end

	def add_batters
		@batters = []
		@batters_data.each do |batter_data|
			@batters << Batter.new(batter_data)
		end
		@batters_data = "batters made"
	end

	def add_toppings
		@toppings = []
		@toppings_data.each do |topping_data|
			@toppings << Topping.new(topping_data)
		end
		@toppings_data = "toppings made"
	end

end