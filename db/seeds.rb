# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
uhaul = Company.create_with(name: 'U-Haul', phone_number: '1 (800) 468-4285').find_or_create_by!(email: 'corporate@uhaul.com')
discount = Company.create_with(name: 'Discount', phone_number: '1 (800) 555-5555').find_or_create_by!(email: 'corporate@discount.com')

User.create!(company: uhaul, name: 'admin', role: 'admin', email: 'admin@uhaul.com', password: '123456')
User.create!(company: uhaul, name: 'driver', role: 'driver', email: 'driver@uhaul.com', password: '123456')

User.create!(company: discount, name: 'admin', role: 'admin', email: 'admin@discount.com', password: '123456')
User.create!(company: discount, name: 'driver', role: 'driver', email: 'driver@discount.com', password: '123456')

Truck.create!(name: 'Pickup-1', company: uhaul, type: 'F250', year: 2020, capacity: 2000, reserved: false)
Truck.create!(name: 'Pickup-2', company: uhaul, type: 'F350', year: 2018, capacity: 2500, reserved: false)

Truck.create!(name: 'Cube-1', company: discount, type: 'E450', year: 2015, capacity: 5000, reserved: false)
