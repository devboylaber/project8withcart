class OrderItemsController < ApplicationController
  # before_action :set_order_item, only: [:show, :edit, :update, :destroy]
  def index
    @order_items = OrderItem.all
  end
  def show
    @order_item = OrderItem.find(params[:id])
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
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_if_success("/carts") if @order.save
  end

  def checkout
    redirect_to charges_controller_create_url
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
    redirect_if_success("/carts")
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :email, :stripe_card_token)
  end
end
