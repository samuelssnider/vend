module Helpers 
	def create_one
		@owner = Owner.create(name: "Sam's Snacks")
		sam.machines.create(location: "Don's Mixed Drinks")
		@machine = sam.machines.first
		@machine.snacks.create(name:  "White Castle Burger", price: 350)
		@machine.snacks.create(name:  "Flaming Hot Cheetos" price: 250)
		@snack_one = @machine.snacks.first
		@snack_two = @machine.snacks.last
	end
end