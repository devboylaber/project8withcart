class CartsController < ApplicationController

#   def new
#     @cart = cart.new
#   end

#   # GET /orders/1/edit
#   def edit
#   end
#   def create
#     @cart = current_order
#     @cart = @cart.carts.new(@cart_params)
#     @cart.save
#     session[:order_id] = @order.id
#   end	
	
#   def show
#     @carts = current_order.carts(@cart_params)
#   end
# end

  def index
    @carts = cart.all
  end
  def show
    @carts = current_order.carts
  end

  # GET /orders/new
  def new
    @cart = cart.new
  end

  # GET /orders/1/edit
  def edit
  end
  def create
    @order = current_order
    @cart = @order.carts.new(@cart_params)
    @order.save
    session[:order_id] = @order.id
    render :show
  end

  def update
    @order = current_order
    @cart = @order.carts.find(params[:id])
    @cart.update_attributes(cart_params)
    @carts = @order.carts
  end

  def destroy
    @order = current_order
    @cart = @order.carts.find(params[:id])
    @cart.destroy
    @carts = @order.carts
  end
private
  def cart_params
    params.require(:cart).permit(:quantity, :product_id, :email, :size)
  end
end