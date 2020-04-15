class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, foreign_key: true
      t.belongs_to :item, foreign_key: true
    end
  end
end
