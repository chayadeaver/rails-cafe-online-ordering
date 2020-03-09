class ItemsController < ApplicationController
    before_action :validate_user, except: [:index]
    def index
        @menus = Menu.all 
        @categories = Category.all

        @items = Item.where(nil)
        @items = @items.by_menu(params[:menu]) if params[:menu].present?
        @items = @items.by_category(params[:category]) if params[:category].present?
    end

    def admin_menus
        if params[:menu_id]
            @items = Menu.find(params[:menu_id]).items
        else
            @items = Item.all
        end
    end

    def admin_categories
        if params[:category_id]
            @items = Category.find(params[:category_id]).items
        else
            @items = Item.all
        end
    end

    def new
        @item = Item.new
    end

private

    def item_params
        params.require(:item).permit(:name, :price, :menu_id, :category_id, :cart_id, :order_id)
    end
end
