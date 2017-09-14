RSpec.describe "As a user" do
	describe "I can visit a vending machine show page" do
		it "and see all snacks and their associated prices" do
			create_one
			visit machine_path(@machine)
			expect(page).to have_content(@snack_one.name)
			expect(page).to have_content(@snack_two.name)
		end
	end
end