class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update]
    before_action :require_login

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
        byebug
        if session[:user_id] == @item.user_id
            if @item.valid?
                @item.update(item_params)
                @item.save
                redirect_to @item
            else
              render :edit
            end
        end
    end

    private
    def require_login
        unless session.include? :user_id
            flash[:error] = "You must be logged in to see this section"
            redirect_to login_path
        end
    end

    def find_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :quantity, :price,:description, :picture, :category_id, user_id: session[:user_id])
    end
end
