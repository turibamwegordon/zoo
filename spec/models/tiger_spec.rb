require 'rails_helper'

RSpec.describe Tiger, type: :model do
	it "invalid without Tiger appetite default value 100" do
		tiger = Tiger.new
		expect(subject.appetite).to be(100)
		expect(tiger) == 100
	end
	it "not correct without zebra appetite == 210" do
		tiger = Tiger.new(appetite: 210)
		expect(tiger.appetite).to eql(210)
	end
end
