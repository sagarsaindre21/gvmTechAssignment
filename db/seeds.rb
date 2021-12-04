# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



roles = ['customer', 'vendor', 'admin']
roles.each do |role|
	Role.find_or_create_by(name: role)
end


categories = ['Mobile', 'Laptop', 'Smart Watch', 'Washing Machine', 'TV Screen', 'Air Conditioner']
categories.each do |category|
	Category.find_or_create_by(name: category)
end

Currency.create!(code: '$')


User.create!(email: "admin@gmail.com",
             password:              "admin@123",
             password_confirmation: "admin@123",
             role_id:3)

