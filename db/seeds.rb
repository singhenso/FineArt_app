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
  name: "Maxwell Alexander",
  location: "Culver City",
  genre: "Realism"
})
g1.user = u1
g1.save

g2 = Gallery.new({
  name: "Arcadia",
  location: "Santa Monica",
  genre: "Realism"
})
g2.user = u2
g2.save

g3 = Gallery.new({
  name: "Linus",
  location: "Pasadena",
  genre: "Realism"
})
g3.user = u3
g3.save





a1 = Artist.create({
  name: "Sean Cheetham",
  genre: "Realism",
  location: "Los Angeles",
  medium: "Oil"
})

# adds artist to gallery's artists array
# which inserts it into the db
g1.artists.push(a1)
g1.artists.create({
  name: "Jeremy Lipking",
  genre: "Art-Noveou",
  location: "Berlin",
  medium: "Oil"
})

a1.items.create({
  name: "Dean Cornwell",
  genre: "Dada",
  medium: "Sculpture",
  location: "Brazil"
})
