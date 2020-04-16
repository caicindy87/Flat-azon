class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]

  def create
    @cart_item = CartItem.new(cart_id: @cart.id)
  end

  def destroy
  end
end
