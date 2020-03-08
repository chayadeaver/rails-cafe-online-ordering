class MenusController < ApplicationController
    before_action :find_menu, only: [:show, :edit, :update]
    before_action :admin_only

    def index
        @menus = Menu.all
    end

    def new
        @menu = Menu.new
    end

    def create
        @menu = Menu.new(menu_params)
        if @menu.save
            redirect_to menu_path(@menu)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @menu.update(menu_params)
        if @menu.save
            redirect_to menu_path(@menu)
        else
            render :edit
        end
    end

    def destroy
        Menu.find_by(id: params[:id]).destroy
        redirect_to menus_path
    end

private
    def find_menu
        @menu = Menu.find_by(id: params[:id])
    end

    def menu_params
        params.require(:menu).permit(:name)
    end
end
