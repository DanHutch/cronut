require './app/bakery.rb'

bakery = Bakery.new
bakery.bake

bakery.items.each do |item|
	item.add_batters
	item.add_toppings
end

#this pry is here so you can call bakery.items from the command line in the pry and see all the item-objects, complete with their respective batter-objects and topping-objects.
binding.pry

