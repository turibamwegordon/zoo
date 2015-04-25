require 'rails_helper'

RSpec.describe TigerController, type: :controller do
	it 'not correct if not return true or false' do
    	expect(controller.hungry(234)).to   be == true
  	end
  	it 'not correct if not correct' do
  		tiger = Tiger.new(appetite: 120)
  		zebra = Zebra.new(weight: 220)
  		expect(controller.eat(220)).to   be == (220)
  	end
end
