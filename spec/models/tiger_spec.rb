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
