class CartsController < ApplicationController
	
  def show
    @order_items = current_order.order_items
    # @products = Product.find(params[:id])
  end
end