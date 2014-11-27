# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# i = 1

# puts "Generating sample products"

# while i < 5 do

1.times do
 Product.create(
                 slide_image: File.new("#{Rails.root}/public/images/fish-dorado.jpg")
                 )
end
1.times do
 Product.create(name: "Tasty Fish", 
  	             description: "Fried", 
  	             image: File.new("#{Rails.root}/public/images/atlantic-salmon1.jpg"),
  	             	price: 3.29,
                  active: true)
                 # quantity: 1
  # puts "product created"

# i = i + 1
end
1.times do
 Product.create(name: "Slamon", 
                 description: "Breaded to delecion!", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon2.jpg"),
                  price: 4.39,
                  active: true)
end
1.times do
 Product.create(name: "Tilapia", 
                 description: "Grilled to perfection.", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon3.jpg"),
                  price: 5.49,
                  active: true)
end
1.times do
 Product.create(name: "Caviar", 
                 description: "Not for the faint of heart", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon4.jpg"),
                  price: 2.99,
                  active: true)
end


puts "Sample products created"
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
puts "Generating sample users"
Order.create! id: 1
Order.create! id: 2
Order.create! id: 3
Order.create! id: 4
Order.create! id: 5
1.times do |n|
  User.create(email: "user@user.com", 
  	             password: "useruser",
  	             password_confirmation: "useruser")
puts "user created"
end
# puts "Sample users created"
puts "Generating sample users"
1.times do |n|
  User.create(email: "admin@admin.com", 
  	             password: "adminadmin",
  	             password_confirmation: "adminadmin",  
  	             admin: true)
  puts "admin created"
end
# puts "Sample admins created"
puts "Generating sample super admins"
1.times do |n|
  User.create(email: "super@admin.com", 
  	             password: "superadmin",
  	             password_confirmation: "superadmin",  
  	             super_admin: true)
  puts "super admin  created"
end
# puts "Sample super admins created"