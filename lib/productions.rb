class Productions
	attr_reader :type, :loaction

	def initialize(type, location)
		@type = type.downcase.gsub(" ", "_") #might want to make these symbols, but idk
		@location = location
	end

	def resources(kind="net")
		resources = {food: 0, gold: 0, ore: 0, wood: 0}
		case type
		when "farm"
			if kind != "produces" 
				resources[:gold] = -1
			elsif kind != "upkeep"
				resources[:food] = 2
			end
		when "lumber_mill"
			if kind != "produces" 
				resources[:gold] = -1
			elsif kind != "upkeep"
				resources[:wood] = 2
			end
		when "mine"
			if kind != "produces" 
				resources[:food] = -1
				resources[:wood] = -1
			elsif kind != "upkeep"
				resources[:gold] = 3
				resources[:ore] = 3
			end
		when "port"
			if kind != "produces" 
				resources[:gold] = -2
			elsif kind != "upkeep"
				resources[:food] = 3
				resources[:wood] = 1
			end
		when "city"
			if kind != "produces" 
				resources[:food] = -4
			elsif kind != "upkeep"
				resources[:gold] = 8
				resources[:ore] = 2
			end
		when "troops"
			if kind != "produces"
				resources[:food] = -1
				resources[:gold] = -1
			end
		when "capital_city"
			if kind != "upkeep"
				resources[:food] = 2
				resources[:gold] = 3
				resources[:wood] = 1
			end
		when "forest"
			if kind != "upkeep"
				resources[:wood] = 1
			end
		end
		resources
	end
end