# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#créations des users
require 'faker'
#cities
city=[]
for i in 0..10
  city<<City.create(name: Faker::Lorem.words(number: 4),zip_code: Faker::String..random(length: 8))
end


for i in 0..10
  User.create(first_name: Faker:Name.first_name,last_name: Faker:Name.last_name,email:"example#{i}@example.com",age: Faker::Number.between(from: 1, to: 99),city: city[i])
end

