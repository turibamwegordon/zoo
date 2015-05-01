require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "invalid without attribute height" do
  	expect(subject).to have_attribute(:height)
  end
  it "invalid if height is not changed" do
  	giraffe = Giraffe.new(height: 457)
  	expect(giraffe.height).to eql(457)
  end
  it "invalid age from the height given" do
  	giraffe = Giraffe.new(height: 240)
  	expect(giraffe.guess_age(giraffe)).to eql 24
  end
end

