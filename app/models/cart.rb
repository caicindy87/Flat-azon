class Cart < ApplicationRecord
  belongs_to :user_id
  has_many :cart_items

  CartItem.find_or_create_by(item_params)
end
