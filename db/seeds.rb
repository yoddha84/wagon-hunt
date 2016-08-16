# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

boris = User.create!(email: 'boris@gboris.com',  password: 'testtest')
seb   = User.create!(email: 'seb@gboris.com',    password: 'testtest')

Product.create!(user: boris, name: "Kudoz", url: "http://getkudoz.com", tagline: "Tinder for job search", category: "tech")
Product.create!(user: seb, name: "uSlide", url: "http://uslide.io", tagline: "Youtube sucks for education", category: "design")
Product.create!(user: boris, name: "Medpics", url: "http://medpics.com", tagline: "Share your diag", category: "education")

