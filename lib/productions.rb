class Productions
	attr_reader :type, :loaction

	def initialize(type, location)
		@type = type.downcase.gsub(" ", "_") #might want to make these symbols, but idk
		@location = location
	end

	def get_products
		products = {food: 0, gold: 0, ore: 0, wood: 0}
		case type
		when "farm"
			products[:food] = 2
		when "lumber_mill"
			products[:wood] = 2
		when "mine"
			products[:gold] = 3
			products[:ore] = 3
		when "port"
			products[:food] = 3
			products[:wood] = 1
		when "city"
			products[:gold] = 8
			products[:ore] = 2
		when "capital_city"
			products[:food] = 2
			products[:gold] = 3
			products[:wood] = 1
		when "forest"
			products[:wood] = 1
		end
		products
	end
end