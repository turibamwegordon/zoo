class TigerController < ApplicationController
	def hungry(appetite)
		@appetite = Tiger.new(appetite: appetite)
		@appetite.save
		true if @appetite.appetite > 0
	end

	def eat(zebra)
		@zebra = Zebra.new(weight: zebra)
		# Tiger.appetite
		@zebra.weight
	end
end


# add another method to tigers called eat that takes a
# zebra. it should update the tiger's appetite based on
# how much the zebra weighed. it should also remove the
# zebra from the zoo.

# hungry()
# add a method to tigers called hungry?
# it returns true if appetite > 0