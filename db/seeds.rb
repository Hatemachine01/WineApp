# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	# require 'faker'

 
#Customers
@customer_1 =	Customer.create!(name:Faker::Name.name, last_name: Faker::Name.last_name, zipcode: Faker::Address.zip_code)

@customer_2 =	Customer.create!(name:Faker::Name.name, last_name: Faker::Name.last_name, zipcode: Faker::Address.zip_code)

@customer_3 =	Customer.create!(name:Faker::Name.name, last_name: Faker::Name.last_name, zipcode: Faker::Address.zip_code)

@customer_4 =	Customer.create!(name:Faker::Name.name, last_name: Faker::Name.last_name, zipcode: Faker::Address.zip_code)

@customer_5 =	Customer.create!(name:Faker::Name.name, last_name: Faker::Name.last_name, zipcode: Faker::Address.zip_code)





#Wines


wine_1 = Wine.create!(name:Faker::Name.name, temp: Faker::Number.between(40,50), customer_id: @customer_1.id)

wine_1 = Wine.create!(name:Faker::Name.name, temp: Faker::Number.between(40,50), customer_id: @customer_2.id)

wine_1 = Wine.create!(name:Faker::Name.name, temp: Faker::Number.between(40,50), customer_id: @customer_3.id)

wine_1 = Wine.create!(name:Faker::Name.name, temp: Faker::Number.between(40,50), customer_id: @customer_4.id)

wine_1 = Wine.create!(name:Faker::Name.name, temp: Faker::Number.between(40,50), customer_id: @customer_5.id)
