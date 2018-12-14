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
		@_batters_data = data["batters"]["batter"]
		@_toppings_data = data["topping"]
	end

	def add_batters
		@batters = []
		@_batters_data.each do |batter_data|
			@batters << Batter.new(batter_data)
		end
		@_batters_data = "batters made"
	end

	def add_toppings
		@toppings = []
		@_toppings_data.each do |topping_data|
			@toppings << Topping.new(topping_data)
		end
		@_toppings_data = "toppings made"
	end

end