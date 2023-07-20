require "rails_helper"

RSpec.describe "Merchant Show Page" do
  describe "/merchants" do
    it "Shows a merchants items" do
      visit merchant_path(1)

      expect(page).to have_content("Schroeder-Jerde's Items")
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end
  end
end