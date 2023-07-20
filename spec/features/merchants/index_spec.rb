require "rails_helper"

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

RSpec.describe "Merchant Index Page" do
  describe "As a visitor" do
    describe "merchants_path" do
      it "Lists all merchants" do
        visit merchants_path

        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
      end

      it "Links to a merchants show page" do
        visit merchants_path

        expect(page).to have_link("Schroeder-Jerde")

        click_link "Schroeder-Jerde"

        expect(current_path).to eq(merchant_path(1))
        expect(page).to have_content("Schroeder-Jerde")

        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
      end
    end
  end
end