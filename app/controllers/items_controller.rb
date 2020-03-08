class ItemsController < ApplicationController
    def index
        @menus = Menu.all 
        @categories = Category.all
        # if params[:menu_id]
        #     @items = Menu.find(params[:menu_id]).items
        # end

        # if params[:category_id]
        #     @items = Category.find(params[:category_id]).items
        # end

        @items = Item.where(nil)
        @items = @items.by_menu(params[:menu]) if params[:menu].present?
        @items = @items.by_category(params[:category]) if params[:category].present?
    end
end
