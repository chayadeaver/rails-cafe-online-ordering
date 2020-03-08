class CategoriesController < ApplicationController
    before_action :find_category, only: [:show, :edit, :update]
    before_action :admin_only
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to category_path(@category)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @category.update(category_params)
        if @category.save
            redirect_to category_path(@category)
        else
            render :edit
        end
    end

    def destroy
        Category.find_by(id: params[:id]).destroy
        redirect_to categories_path
    end

private
    def find_category
        @category = Category.find_by(id: params[:id])
    end

    def category_params
        params.require(:category).permit(:name)
    end
end
