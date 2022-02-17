# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(email: 'john@rambo.com')
user.password = 'password12345'
user.password_confirmation = 'password12345'

restaurant = user.restaurants.find_or_initialize_by(name: 'Bellagamba', address: 'Armenia St')
restaurant2 = user.restaurants.find_or_initialize_by(name: 'Zitto', address: 'Aristides St')

user.save
