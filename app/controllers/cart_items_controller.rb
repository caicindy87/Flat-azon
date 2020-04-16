class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]

  def create
    # byebug
    @cart.add_item(cart_item_params)
  end

  def destroy
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :quantity)
  end
end
