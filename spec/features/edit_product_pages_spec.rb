require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'James', :cost => 9.99, :made_in => 'United States')
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Name', :with => 'Lee'
    click_on 'Update Product'
    expect(page).to have_content 'Lee'
  end
end
