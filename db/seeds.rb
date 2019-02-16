# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "George", email:"george@gmail.com")
User.create(name: "Debora", email:"debora@gmail.com")

Article.create(title: 'This is a title number 1', content: 'This is a content...', user_id: 1)
Article.create(title: 'This is a title number 2', content: 'This is a content...', user_id: 2)
Article.create(title: 'This is a title number 3', content: 'This is a content...', user_id: 1)

Article.create(title: 'This is a title number 1', content: 'This is a content...', user_id: 2)
Article.create(title: 'This is a title number 2', content: 'This is a content...', user_id: 1)
Article.create(title: 'This is a title number 3', content: 'This is a content...', user_id: 2)
