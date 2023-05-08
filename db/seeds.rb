# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Generate fake data for CharterSchools
100.times do
  address = "#{Faker::Address.street_address}, Houston, TX #{Faker::Address.zip_code}"
  preview = "https://source.unsplash.com/random/900x700/?school,elementary"
  CharterSchool.create!(
    name: Faker::Company.name + " Charter School",
    address: address,
    phone_number: Faker::PhoneNumber.phone_number,
    website: Faker::Internet.url,
    test_scores: Faker::Number.between(from: 50, to: 100),
    graduation_rate: Faker::Number.between(from: 60, to: 100),
    preview: preview
  )
end

