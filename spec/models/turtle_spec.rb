require 'rails_helper'

RSpec.describe Turtle, type: :model do
	it "invalid without status attribute" do
		expect(subject).to have_attribute(:status)
	end
	it "invalid if not boolean" do
		turtle = Turtle.new(status: true)
		expect(turtle.status).to satisfy {|v| v == true || v == false}
	end
	it "hidden should be false" do
		turtle = Turtle.new
		turtle.hide 
		expect(turtle.status).to eql false
	end
	it "emerge should be true" do
		turtle = Turtle.new
		turtle.emerge
		expect(turtle.status).to eql true
	end
end
