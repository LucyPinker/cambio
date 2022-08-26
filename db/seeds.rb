require 'faker'

p "cleaning the database"
Listing.destroy_all
p 'creating 50 new users and listings'


50.times do

  user = User.create!(
  name: Faker::Internet.username,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user.save!

  # listing = Listing.create!(
  #   location: Faker::Address.city,
  #   start_date: Faker::Date.in_date_period,
  #   end_date: Faker::Date.in_date_period,
  #   house_type: ["house", "apartment", "boat", "cabin", "tent"].sample,
  #   pets: [true, false].sample,
  #   plants: [true, false].sample,
  #   bedrooms: rand(1..5),
  #   guests: rand(1..8),
  #   user: user
  # )
  # listing.save!
end

p 'Mission success!'
