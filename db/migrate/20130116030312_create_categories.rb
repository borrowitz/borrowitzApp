class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|

      t.integer	 :user_id
      t.string   :category_name
      t.string   :category_description
      t.integer	 :status, :default => 1	

      t.timestamps
    end
  end
end
