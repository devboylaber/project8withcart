class cartsController < ApplicationController
  # before_action :set_cart, only: [:show, :edit, :update, :destroy]
  def index
    @carts = cart.all
  end
  def show
    @cart = cart.find(params[:id])
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
    @cart = @order.carts.new(cart_params)
    @order.save
    session[:order_id] = @order.id
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
    params.require(:cart).permit(:quantity, :product_id, :email)
  end
end
