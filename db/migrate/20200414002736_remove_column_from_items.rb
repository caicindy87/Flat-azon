class RemoveColumnFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :cart_item_id
  end
end
