class Product < ActiveRecord::Base
  has_many :order_items
  has_attached_file :image, :styles => { :huge => "500x500>", :large => "400x400>", :medium => "300x300>", :small => "200x200>", :tiny => "100x100>" }, :defualt_url => "/images/:style/cool.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/  

  default_scope { where(active: true) }
end