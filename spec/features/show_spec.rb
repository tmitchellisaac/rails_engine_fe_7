require 'rails_helper'

RSpec.describe 'Merchants index page', type: :feature do
  it "has a merchant show page with a list of items" do
    visit merchants_path
  
    click_on "Schroeder-Jerde"
    expect(current_path).to eq(merchant_path(1))
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Expedita Fuga")
  end

  it 'has' do
    visit merchants_path
    fill_in "q", with: "Schroeder-Jerde"
    click_on "Search"
    save_and_open_page
  end
end