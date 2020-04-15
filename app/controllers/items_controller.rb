class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy, :same_user_item]
  before_action :authorized, except: [:show]
  before_action :current_user, except: [:show]
  before_action :same_user_item, only: [:edit, :update]

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.valid?
      @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item.delete
    redirect_to categories_path
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :price, :description, :picture, :category_id, :user_id)
  end

  def same_user_item
    not_authorized(@item, 'Not authorized to edit this item')
  end
end
