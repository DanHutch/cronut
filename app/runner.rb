require './app/bakery.rb'

bakery = Bakery.new
bakery.bake

bakery.items.each do |item|
	item.add_batters
	item.add_toppings
end


binding.pry

