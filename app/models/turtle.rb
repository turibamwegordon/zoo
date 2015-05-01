class Turtle < ActiveRecord::Base

	def hide(state=false)
		self.status = state
	end

	def emerge(state=true)
		self.status = state
	end
end


# hide() and emerge()
# give turtles two methods that change their status