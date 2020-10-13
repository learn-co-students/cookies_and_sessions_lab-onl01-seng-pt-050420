class ProductsController < ApplicationController
    def index
        @products = session[:cart]
    end

    def create
        if session[:cart].nil?
            session[:cart] = []
        end
        cart = session[:cart]
        cart << params[:product]
        session[:cart] = cart
        redirect_to products_path
    end
end
