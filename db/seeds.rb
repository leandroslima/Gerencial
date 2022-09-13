# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
Manager.destroy_all
Client.destroy_all
puts "Database cleaned"
puts "Creating manager"

Manager.create!(
  email: 'email@email.com',
  password: '123456',
  password_confirmation: '123456'
)

puts "Manager created"
puts "Creating clients"

10.times do
  Client.create!(
    name: Faker::Name.name,
    account: '123456',
    password: '123456',
    email: 'email@email.com',
    message: 'a random message for you'
  )
end

puts "Clients created"
