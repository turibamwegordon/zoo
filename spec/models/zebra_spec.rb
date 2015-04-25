require 'rails_helper'

RSpec.describe Zebra, type: :model do
  	it "invalid without weight attribute" do
		expect(subject).to have_attribute(:weight)
  	end
  	it "not correct without the zebra weight == 321" do
  		zebra = Zebra.new(weight: 321)
		expect(zebra.weight).to   eq(321)
		expect(zebra.weight).not_to be_nil
  	end
end
