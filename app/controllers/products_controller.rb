class ProductsController < ApplicationController

    def index
       @cart = session[:cart]
    end

    def add_to_cart

    product = params[:product]
 
        cart = session[:cart] || []
        cart << product
  
        session[:cart] = cart
    end

end