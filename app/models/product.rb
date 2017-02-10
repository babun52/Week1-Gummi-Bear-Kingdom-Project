class Product < ActiveRecord::Base
  validates :name, :cost, :made_in, :presence => true
  validates :name, :uniqueness => true
end
