class CartsController < ApplicationController

#   def new
#     @order_item = OrderItem.new
#   end

#   # GET /orders/1/edit
#   def edit
#   end
#   def create
#     @cart = current_order
#     @cart = @cart.order_items.new(@order_item_params)
#     @cart.save
#     session[:order_id] = @order.id
#   end	
	
#   def show
#     @order_items = current_order.order_items(@order_item_params)
#   end
# end

  def index
    @order_items = OrderItem.all
  end
  def show
    @order_items = current_order.order_items
  end

  # GET /orders/new
  def new
    @order_item = OrderItem.new
  end

  # GET /orders/1/edit
  def edit
  end
  def create
    @order = current_order
    @order_item = @order.order_items.new(@order_item_params)
    @order.save
    session[:order_id] = @order.id
    render :show
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :email)
  end
end