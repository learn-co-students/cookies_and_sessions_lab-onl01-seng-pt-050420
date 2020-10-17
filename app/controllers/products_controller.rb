class ProductsController < ApplicationController

    def index
       @cart = session[:cart]
    end

    def add_to_cart
        cart << params[:product]
    
        render :index
    end

end