# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
uhaul = Company.create_with(name: 'U-Haul', phone_number: '1 (800) 468-4285' ).find_or_create_by!(email: 'corporate@uhaul.com')
User.create!(company: uhaul, name: 'admin', role: 'admin', email: 'admin@uhaul.com', password: '123456')
User.create!(company: uhaul, name: 'driver', role: 'driver', email: 'driver@uhaul.com', password: '123456')
