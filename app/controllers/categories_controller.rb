class CategoriesController < ApplicationController
    def index 
        categories = Category.all 
         options = {include: [:books]}
        render json: CategorySerializer.new(categories, include: [:books])
    end
end
