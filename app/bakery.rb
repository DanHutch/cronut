	require 'json'
	require 'pry'
	require './app/item.rb'
	

class Bakery
	attr_reader :items


	def bake
		@items = []
		file = File.read'./data/cronut.json'
		item_set = JSON.parse(file)["items"].first[1]
		item_set.each do |item_data|
			item = Item.new(item_data)
			@items << item
		end	
	end

end