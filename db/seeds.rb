# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
Artist.destroy_all
Gallery.destroy_all
User.destroy_all

u1 = User.create({
  name: "a",
  email: "a",
  password: "a",
  password_confirmation: "a"
})

g1 = Gallery.new({
  location: "China",
  genre: "Abstract"
})
g1.user = u1
g1.save

a1 = Artist.create({
  name: "john"
  genre: "Realism",
  location: "Los Angeles",
  medium: "Oil"
})

# adds artist to gallery's artists array
# which inserts it into the db
g1.artists.push(a1)
g1.artists.create({
  genre: "Dada",
  location: "Berlin",
  medium: "Oil"
})

a1.items.create({
  name: "Hawking"
  genre: "Dada",
  medium: "Sculpture",
  location: "Brazil"
})
