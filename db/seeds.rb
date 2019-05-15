# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurants = Restaurant.create([{
              name: 'Romains pizza place',
              address: '1616 random street',
              category: 'japanese'
           }, {
              name: 'Clairs cookies',
              address: '5402 Cheewie cookie blv',
              category: 'chinese'
           }, {
              name: 'Alex gross protein shake shack',
              address: '665 random street',
              category: 'french'
           }, {
              name: 'Marcs israeli joint',
              address: '123 random street',
              category: 'belgian'
           }, {
              name: 'Javiers tapas',
              address: '33124 random street',
              category: 'italian'
           }])
