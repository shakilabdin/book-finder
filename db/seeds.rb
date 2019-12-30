# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

a1 = Author.create(name: Faker::Name.name, profile: Faker::Quote.matz)
a2 = Author.create(name: Faker::Name.name, profile: Faker::Quote.matz)
a3 = Author.create(name: Faker::Name.name, profile: Faker::Quote.matz)
a4 = Author.create(name: Faker::Name.name, profile: Faker::Quote.matz)
a5 = Author.create(name: Faker::Name.name, profile: Faker::Quote.matz)

g1 = Genre.create(name: Faker::Book.genre, profile: Faker::Marketing.buzzwords)
g2 = Genre.create(name: Faker::Book.genre, profile: Faker::Marketing.buzzwords)
g3 = Genre.create(name: Faker::Book.genre, profile: Faker::Marketing.buzzwords)
g4 = Genre.create(name: Faker::Book.genre, profile: Faker::Marketing.buzzwords)
g5 = Genre.create(name: Faker::Book.genre, profile: Faker::Marketing.buzzwords)

b1 = Book.create(title: Faker::Book.title, author_id: a1.id, genre_id: g1.id, summary: Faker::Lorem.sentences)
b2 = Book.create(title: Faker::Book.title, author_id: a2.id, genre_id: g2.id, summary: Faker::Lorem.sentences)
b3 = Book.create(title: Faker::Book.title, author_id: a3.id, genre_id: g3.id, summary: Faker::Lorem.sentences)
b4 = Book.create(title: Faker::Book.title, author_id: a4.id, genre_id: g4.id, summary: Faker::Lorem.sentences)
b5 = Book.create(title: Faker::Book.title, author_id: a5.id, genre_id: g5.id, summary: Faker::Lorem.sentences)
b6 = Book.create(title: Faker::Book.title, author_id: a3.id, genre_id: g4.id, summary: Faker::Lorem.sentences)
b7 = Book.create(title: Faker::Book.title, author_id: a2.id, genre_id: g1.id, summary: Faker::Lorem.sentences)
b8 = Book.create(title: Faker::Book.title, author_id: a5.id, genre_id: g2.id, summary: Faker::Lorem.sentences)