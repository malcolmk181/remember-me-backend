# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars = Thing.create(name: 'Cars', content: 'Never buy a car that is less than 3 years old.')
civic = Thing.create(name: 'Blue Civic', content: 'My lovely 91 civic - such a moneypit')

rel = ThingRelationship.create(parent_thing: cars, child_thing: civic)