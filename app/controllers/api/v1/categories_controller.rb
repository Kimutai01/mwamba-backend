class Api::V1::CategoriesController < ApplicationController
    skip_before_action :authorized

   def create 
    @category = Category.create(category_params)
    render json: @category
   end

    def update 
        @category = Category.find(params[:id])
        @category.update(category_params)
        render json: @category
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        render json: @category
    end

    private

    def category_params
        params.permit(:name, :product_id, :price, :sizes => [])
        
    end


end
