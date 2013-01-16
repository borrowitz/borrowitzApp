class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string   :product_name
      t.integer	 :user_id
      t.integer  :category_id
      t.string	 :product_description
      t.string	 :product_condition
      t.decimal	 :fee
      t.decimal	 :price
      t.integer  :sale_status
      t.datetime :available_since
      t.datetime :available_to
      t.integer  :available

      t.timestamps
    end
  end
end
