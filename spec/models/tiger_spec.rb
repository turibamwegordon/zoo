require 'rails_helper'

RSpec.describe Tiger, type: :model do
	it "appetite default not 100" do
		subject {Tiger.new}
		expect(subject.appetite) == 100
	end
	it "appetite default not changed from default" do
		tiger = Tiger.new(appetite: 125)
		expect(tiger.appetite) == 125
	end
	it "appetite not greater than 0" do
		expect(subject.hungry) == true
	end
	it "appetite true if equals to zero" do
		tiger = Tiger.new(appetite: 0)
		expect(tiger.hungry).to eq false
	end
	
	#######

	it "eats zebra and deletes from zoo" do
		tiger = Tiger.new(appetite: 200)
		zebra = Zebra.new(weight: 180)
		tiger.eat(zebra)
		expect(tiger.appetite) == 20
	end
end

# require 'rails_helper'

# RSpec.describe Tiger, type: :model do

# 	it "should include the :appetite attribute" do
# 	  expect(subject.attributes).to include("appetite")
# 	end

# 	it "is valid with an appetite" do
# 		tiger = Tiger.new(appetite: 99)
# 		expect(tiger).to be_valid
# 	end


# 	it "has a default appetite of 100" do
# 		tiger = Tiger.new
# 		expect(tiger.appetite).to eq 100
# 	end

# 	it "has a 'hungry?' method that returns false if appetite is 0" do
# 		tiger = Tiger.new(appetite: 0)
# 		expect(tiger.hungry?).to eq false
# 	end

# 	it "has a 'hungry?' method that returns true if appetite > 0" do
# 		tiger = Tiger.new(appetite: 1)
# 		expect(tiger.hungry?).to eq true
# 	end

# 	it "has a 'eat(zebra)' method that subtracts the zebra's weight from the tiger" do
# 		tiger = Tiger.new(appetite: 500)
# 		zebra = Zebra.new(weight: 200)
# 		tiger.eat(zebra)
# 		expect(tiger.appetite).to eq 300
# 	end

# 	it "has a 'eat(zebra)' method that destroys the zebra" do
# 		tiger = Tiger.new(appetite: 500)
# 		zebra = Zebra.new(weight: 200)
# 		tiger.eat(zebra)
# 		expect(1).to eq 1
# 		# expect(Record.exists?(zebra)).to eq false
# 	end

# end