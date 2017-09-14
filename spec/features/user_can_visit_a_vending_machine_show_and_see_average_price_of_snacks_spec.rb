require 'rails_helper'
RSpec.describe "As a user" do
	describe "I can visit a vending machine show page" do
		it "and see average price of all snacks" do
			create_one
			visit machine_path(@machine)
			expect(page).to have_content((@machine.average_price.to_f) / 100)
		end
	end
end