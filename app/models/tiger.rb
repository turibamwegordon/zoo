class Tiger < ActiveRecord::Base
	def hungry
		self.appetite > 0
	end

	def eat(zebra)
		zebra.destroy
		self.appetite -= zebra.weight
	end
end

# hungry()
# add a method to tigers called hungry?
# it returns true if appetite > 0

# eat(zebra)
# add another method to tigers called eat that takes a
# zebra. it should update the tiger's appetite based on
# how much the zebra weighed. it should also remove the
# zebra from the zoo.



