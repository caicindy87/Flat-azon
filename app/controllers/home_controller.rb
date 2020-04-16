class HomeController < ApplicationController
  def show
    @items = Item.all
  end
end