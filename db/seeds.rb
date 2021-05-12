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

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all

5.times do
  City.create(name: Faker::Address.city,zip_code: Faker::Address.zip_code)
end
8.times do
  Tag.create(title: Faker::Lorem.sentence(word_count: 1))
end
10.times do
  User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,description: Faker::Lorem.sentences(2).join,email: Faker::Internet.safe_email,age: Faker::Number.between(from: 1, to: 120),city_id: City.all.sample.id)
end
12.times do
  Gossip.create(title: Faker::Lorem.sentence(word_count: 3),content: Faker::Lorem.sentence(word_count: 10),user_id: User.all.sample.id)
end
10.times do
  Comment.create(content: Faker::Lorem.sentence(word_count: 10),user_id: User.all.sample.id,gossip_id: Gossip.all.sample.id)
end
