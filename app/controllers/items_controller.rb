class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy, :same_user_item]
  before_action :authorized, except: [:index, :show, :search]
  before_action :same_user_item, only: [:edit, :update]

  def index
    @items = Item.all
  end

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
    redirect_to user_path(current_user)
  end

  def search
    if params[:search].blank?
      redirect_to login_path
    else
      @query = params[:search].downcase
      @results = Item.where("lower(name) LIKE :query", query: "%#{@query}%")
    end
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :price, :description, :picture, :category_id, :user_id)
  end

  def same_user_item
    not_authorized(@item, @item.user_id, 'Not authorized to edit this item')
  end


end
