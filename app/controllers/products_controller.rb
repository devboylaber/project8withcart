class ProductsController < ApplicationController
   #modified
  def index
    @products = Product.all
    @cart = current_order.carts.new
    @cart = current_order.carts.new
  end
    def show
    @product = Product.find(params[:id])
  end
end

