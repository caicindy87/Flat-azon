class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]

  def create
    item = Item.find(params[:item_id])
    @cart_item = @cart.add_item(item)
    flash[:success] = "#{item.name} added to the cart"
    redirect_to item
  end

  def destroy
    # byebug
    @cart.cart_items.find(params[:cart_item_id]).destroy
    redirect_to @cart
  end

  private

  # def cart_item_params
  #   params.require(:cart_items).permit(:item_id, :quantity)
  # end
end
