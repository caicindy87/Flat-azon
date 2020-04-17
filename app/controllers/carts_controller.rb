class CartsController < ApplicationController
  before_action :set_cart
  before_action :calculate_total, only: [:show]
  def show

  end


  private

  def calculate_total
    @total = 0
    @cart.cart_items.each do | item|
      @total += item.quantity * item.item.price
    end
    @total
  end

end



