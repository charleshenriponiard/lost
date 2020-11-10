# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "clear DB"

Pet.destroy_all

puts "create Pet"

SPECIES = %w(pig bird lyon dog)

10.times do
  Pet.create(
    name: Faker::Name.name,
    species: SPECIES.sample,
    date: Date.today - rand(1..20),
    address: Faker::Address.city
  )
end

puts "Seed OK"
