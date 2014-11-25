class CartsController < ApplicationController
	
  def show
    @order_items = current_order.order_items
    # @products = Product.find(params[:id])
  end
    def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    # redirect_if_success("/carts") if @order.destroy
  end
  def checkout
    redirect_to charges_controller_create_url
  end
end