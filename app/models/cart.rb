class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  def add_item(item)
    current_item = cart_items.find_by(item_id: item.id)
    if current_item
      current_item.quantity += 1
      current_item.save
    else
      current_item = cart_items.build(item_id: item.id)
      current_item.save
    end
    current_item
  end
end
