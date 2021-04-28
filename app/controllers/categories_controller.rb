class CategoriesController < ApplicationController
    def index 
        categories = Category.all 
        #  options = {include: [:books]}
        render json: CategorySerializer.new(categories, include: [:books])
    end

    # def create
    #     category = Category.find_by(name: params[:name])
    #     if category
    #         render json: category, include: [:books]
    #     else
    #         newCategory = Category.create(name: params[:name])
    #         render json: newCategory, include: [:books]
    #     end
    # end

end
