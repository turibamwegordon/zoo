require 'rails_helper'

RSpec.describe Turtle, type: :model do
	it "invalid without status attribute" do
		expect(subject).to have_attribute(:status)
	end
	it "invalid if not boolean" do
		turtle = Turtle.new(status: true)
		# expect(turtle.status).to be_true
		expect(turtle.status).to satisfy {|v| v == true || v == false}
	end
end
