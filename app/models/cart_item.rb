class CartItem < ApplicationRecord
  belongs_to :cart_id
  belongs_to :item_id
end
