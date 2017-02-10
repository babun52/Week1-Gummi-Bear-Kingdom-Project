require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => 'James', :cost => 9.99, :made_in => 'United States')
    visit product_path(product)
    click_on 'Delete'
    expect(page).to have_content 'Products List'
  end
end
