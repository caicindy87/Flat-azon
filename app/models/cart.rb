class Cart < ApplicationRecord
  belongs_to :user_id
  has_many :cart_items

  def add_item(cart_item_params)
    current_item = CartItem.find_by(item_id: cart_item_params[:cart_item][:item_id])
    if current_item
      current_item.quantity += 1
      current_item.save
    else
      new_item = CartItem.create(cart_id: self.id, item_id: cart_item_params[:cart_item][:item_id], quantity: 1)
    end
    new_item
  end

end
