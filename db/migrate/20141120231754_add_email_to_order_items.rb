class AddEmailToOrderItems < ActiveRecord::Migration
  def change
  	add_column :order_items, :email, :string
  end
end
