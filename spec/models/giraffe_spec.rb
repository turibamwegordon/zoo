require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "invalid without attribute height" do
  	expect(subject).to have_attribute(:height)
  end
  it "xxx" do
  	giraffe = Giraffe.new(height: 457)
  	expect(giraffe.height).to eql(457)
  end
end

