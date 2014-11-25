class ProductsController < ApplicationController
   #modified
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @cart = current_order.order_items.new
  end
  def new
  	@product = Product.new
  end
  def create
  	@product = Product.new(params[:id])
  	if @product.save
  		redirect_to products_path
  	end
  end
  def show
    @product = Product.find(params[:id])
  end
end

