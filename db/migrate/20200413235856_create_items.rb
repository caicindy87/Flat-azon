class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :description
      t.boolean :sold, default: false
      t.string :picture
      t.integer :user_id
      t.integer :cart_item_id 
      t.integer :category_id 
      t.timestamps
    end
  end
end


# Name
# Quantity
# Price
# Description
# Sold:boolean, default = false
# User_id
# Cart_item_id
# Category_id
# Picture (if we have time)
