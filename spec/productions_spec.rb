require 'rspec'
require_relative "../lib/productions.rb"

describe Productions do 
	#Might need to add a before(:each) block but i'm not sure yet
	before(:each) do
		@farm = Productions.new("farm", "A1")
		@lumber_mill = Productions.new("lumber mill", "A1")
		@mine = Productions.new("mine", "A1")
		@port = Productions.new("port", "A1")
		@city = Productions.new("city", "A1")
		@capital_city = Productions.new("capital city", "A1")
		@troops = Productions.new("troops", "A1")
		@forest = Productions.new("forest", "A1")
	end


	it "farm produces 2 food" do
		expect(@farm.get_products).to eql({food: 2, gold: 0, ore: 0, wood: 0})
	end

	it "lumber mill produces 2 wood" do
		expect(@lumber_mill.get_products).to eql({food: 0, gold: 0, ore: 0, wood: 2})
	end

	it "mine produces 3 gold and 3 ore" do
		expect(@mine.get_products).to eql({food: 0, gold: 3, ore: 3, wood: 0})
	end

	it "port produces 3 food and 1 wood" do
		expect(@port.get_products).to eql({food: 3, gold: 0, ore: 0, wood: 1})
	end

	it "city produces 8 gold and 2 ore" do
		expect(@city.get_products).to eql({food: 0, gold: 8, ore: 2, wood: 0})
	end

	it "troops produce nothing" do 
		expect(@troops.get_products).to eql({food: 0, gold: 0, ore: 0, wood: 0})
	end

	it "forest produces 1 wood" do
		expect(@forest.get_products).to eql({food: 0, gold: 0, ore: 0, wood: 1})
	end

	it "capital city produces 2 food, 3 gold ,and 1 wood" do
		expect(@capital_city.get_products).to eql({food: 2, gold: 3, ore: 0, wood: 1})
	end
end 