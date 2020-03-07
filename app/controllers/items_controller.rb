class ItemsController < ApplicationController
    def index
        @menus = Menu.all 
        @categories = Category.all
        

        @items = Item.where(nil)
        @items = @items.by_menu(params[:menu]) if params[:menu].present?
        @items = @items.by_category(params[:category]) if params[:category].present?
    end
end
