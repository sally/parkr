# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paula = User.create(email: 'p@p.p', password: 'p', password_confirmation: 'p', username: 'paula', biography: 'all i do is ball')

sf = City.create(name: 'San Fransokyo')

lcp = Park.create(name: 'Lucky Cat Park', description: 'This park is real kuchi.', creator: User.first, city: City.last)

User.create(email: 'j@j.j', password: 'j', password_confirmation: 'j', username: 'jeff', biography: 'all i do is eat')

Review.create(title: 'this park is LIT', body: 'as someone who loves to eat, i love to eat here. There are a lot of benches and tables to eat my food.', reviewer: User.last, park: Park.first)