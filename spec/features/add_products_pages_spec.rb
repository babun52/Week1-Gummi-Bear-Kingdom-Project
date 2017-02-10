require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => 'Lee'
    fill_in 'Cost', :with => '7.99'
    fill_in 'Made in', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'Products List'
  end
end
