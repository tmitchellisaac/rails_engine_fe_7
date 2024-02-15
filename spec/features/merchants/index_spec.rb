require 'rails_helper'

RSpec.describe 'Merchants index page', type: :feature do
  it "has a list of merchants by name, link to the merchant show page and items of each merchant" do
    visit merchants_path
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end
end