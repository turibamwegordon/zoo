class Giraffe < ActiveRecord::Base

	def guess_age(height)
		self.height / 10
	end
end
