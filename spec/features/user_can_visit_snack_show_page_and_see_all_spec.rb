require 'rails_helper'
RSpec.describe "As a user" do
	describe "I can visit a snack show page" do
		it "and see all statistics for that snack" do
			create_two
			visit snack_path(@snack_one)
			expect(page).to have_content(@machine.location)
			expect(page).to have_content(@machine_two.location)
			expect(page).to have_content("Kinds of snacks,")
			expect(page).to have_content(@machine_two.snacks.count)
			expect(page).to have_content((@machine.average_price.to_f) / 100)
			expect(page).to have_content((@machine_two.average_price.to_f) / 100)

			expect(page).to have_content((@machine.average_price.to_f) / 100)
		end
	end
end