class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.integer	 :user_id
      t.integer	 :product_owner_id
      t.string   :description
      t.datetime :borrowed_since
      t.datetime :borrowed_to
      
      t.timestamps
    end
  end
end
