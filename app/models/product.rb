class Product < ActiveRecord::Base
  attr_accessible :product_name, :product_description, :user_id, :category_id, :product_condition, :fee, :price
end
