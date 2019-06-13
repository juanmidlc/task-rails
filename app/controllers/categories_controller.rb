class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render status: 200, json: categories
    end

    def create
        category = new Category(category_params)
        if category.save
            render status: 201, json: category
        else
            render status: 422, json: { errors: category.errors }
        end
    end

    protected
    def category_params
        params[:category].permit(:name, :description)
    end
end
