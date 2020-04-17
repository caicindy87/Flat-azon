class CheckoutController < ApplicationController

  def create
    total = params[:total].to_i
    cart = Cart.find(params[:cart])
    if cart.nil?
      flash[:error] = "Invalid Cart, try again."
      redirect_to root_path
      return
    end
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
                     name: cart.cart_items.first.item.name,
                     description: cart.cart_items.first.item.description,
                     amount: total * 100,
                     currency: 'usd',
                     quantity: cart.cart_items.first.quantity
                   }],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    session[:cart_id] = nil
    respond_to do |format|
      format.js
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end

  def cancel
    flash[:error] = 'An error occur'
    redirect_to root_path
  end
end

