class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #these were all added
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end


  private
  def redirect_if_success(default_url)
     redirect_to params[:to] || default_url
     # or similar logic
  end


      # def current_order
      #   @current_order ||= Order.find(session[:order_id]) if session[:order_id]
      # end
  #till here
end
    