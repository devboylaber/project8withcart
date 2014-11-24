class AddStripeTocarts < ActiveRecord::Migration
  def change
  	  add_column :carts, :stripe_customer_token, :string
  end
end
