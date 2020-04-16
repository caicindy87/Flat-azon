class AddCheckedOutToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :checked_out, :boolean, default: false
  end
end
