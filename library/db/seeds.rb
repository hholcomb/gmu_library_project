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