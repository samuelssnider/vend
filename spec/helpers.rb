module Helpers 
	def create_one
		@owner = Owner.create(name: "Sam's Snacks")
		@owner.machines.create(location: "Don's Mixed Drinks")
		@machine = @owner.machines.first
		@snack_one = Snack.create(name:  "White Castle Burger", price: 350)
		@snack_two  = Snack.create(name:  "Flaming Hot Cheetos", price: 250)
		MachineSnack.create(machine: @machine, snack: @snack_one)
		MachineSnack.create(machine: @machine, snack: @snack_two)
	end
	
	def create_two
		@owner = Owner.create(name: "Sam's Snacks")
		@owner.machines.create(location: "Don's Mixed Drinks")
		@machine = @owner.machines.first
		@snack_one = Snack.create(name:  "White Castle Burger", price: 350)
		@snack_two  = Snack.create(name:  "Flaming Hot Cheetos", price: 250)
		MachineSnack.create(machine: @machine, snack: @snack_one)
		MachineSnack.create(machine: @machine, snack: @snack_two)
		@owner_two = Owner.create(name: "Drew's Drinks")
		@owner_two.machines.create(location: "Other Mixed Drinks")
		@machine_two = @owner_two.machines.first
		@snack_three = Snack.create(name:  "Funyuns", price: 450)
		MachineSnack.create(machine: @machine_two, snack: @snack_one)
		MachineSnack.create(machine: @machine_two, snack: @snack_three)
	end
end