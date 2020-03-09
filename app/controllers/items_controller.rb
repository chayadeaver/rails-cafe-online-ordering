class ItemsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :admin_only, only: [:admin_categories, :admin_menus]
    before_action :find_item
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

    def create
        @item = Item.create(item_params)
        if @item
            redirect_to item_path(@item)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @item.update(item_params)
        if @item.save
            redirect_to item_path(@item)
        else
            render :edit
        end
    end

    def destroy
        Item.find_by(id: params[:id]).destroy
        redirect_to items_path
    end

private

    def find_item
        @item = Item.find_by(id: params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :price, :menu_id, :category_id, :cart_id, :order_id)
    end
end
