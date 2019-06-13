class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render status: 200, json: categories
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end

    def create
        category = Category.new(category_params)
        if category.save
            render status: 201, json: category
        else
            render status: 422, json: { errors: category.errors }
        end
    end

    def update
        category = Category.find(params[:id])

        if category.update(category_params)
            render status: 200, json: category
        else
            render status: 422, json: { errors: category.errors }
        end
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy
        head 204
    end

    protected
    def category_params
        params[:category].permit(:name, :description)
    end
end
