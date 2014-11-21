class AddStripeToOrderItems < ActiveRecord::Migration
  def change
  	  add_column :order_items, :stripe_customer_token, :string
  end
end
