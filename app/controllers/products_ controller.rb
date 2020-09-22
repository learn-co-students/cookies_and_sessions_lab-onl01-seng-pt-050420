class ProductsController < ApplicationController
    def index
    end

    def add
        cart << params[:item]

        redirect_to '/'
    end
end