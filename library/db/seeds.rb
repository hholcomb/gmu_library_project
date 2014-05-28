# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.where(name: 'user_1').first_or_create!(name: 'user_1', user_id:'user_1', password: 'password', admin: false)
User.where(name: 'user_2').first_or_create!(name: 'user_2', user_id:'user_2', password: 'password', admin: false)
User.where(name: 'user_3').first_or_create!(name: 'user_3', user_id:'user_3', password: 'password', admin: false)
User.where(name: 'user_4').first_or_create!(name: 'user_4', user_id:'user_4', password: 'password', admin: false)
User.where(name: 'priv_1').first_or_create!(name: 'priv_1', user_id:'priv_1', password: 'password', admin: true)
User.where(name: 'priv_2').first_or_create!(name: 'priv_2', user_id:'priv_2', password: 'password', admin: true)

Book.where(title: 'The Hobbit').first_or_create!(author: 'J.R.R. Tolkien ', author_id: 1 genre: 'Fantasy', isbn: '978-0544174221', pages: 384, published_on: '1937', total_in_library: 5, abstract: 'Gandalf tricks Bilbo into hosting a party for Thorin and his band of dwarves, who sing of reclaiming the Lonely Mountain and its vast treasure from the dragon Smaug.')
Book.where(title: 'The Lord of the Rings').first_or_create!(author: 'J.R.R. Tolkien ', author_id: 1 genre: 'Fantasy', isbn: '978-0547928210', pages: 432, published_on: '1954', total_in_library: 5, abstract: 'The story begins in the Shire, where the Hobbit Frodo Baggins inherits the Ring from Bilbo Baggins, his cousin and guardian. Neither is aware of its origin and nature, but Gandalf the Grey, a wizard and old friend of Bilbo, suspects the Rings identity.')
