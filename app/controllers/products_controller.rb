class ProductsController < ApplicationController
    def index
        # @products = Product.find(params[:id])
    end 

    def add
        cart << params[:product]
        render :index
      end
end 