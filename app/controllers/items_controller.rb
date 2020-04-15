class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]
    before_action :authorized, except: [:show]
    before_action :current_user, except: [:show] 
    before_action :check_item_user, only: [:edit, :update]

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)

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
            if @item.valid?
                @item.update(item_params)
                @item.save
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
        params.require(:item).permit(:name, :quantity, :price,:description, :picture, :category_id, :user_id)
    end

    def check_item_user
        @user_id = Item.find(params[:id]).user_id
        if !(@user_id == current_user.id)
          flash[:error] = "Not authorized to edit this item"
          redirect_to item_path(params[:id])
        end
      end
end
