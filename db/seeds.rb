# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Progress.destroy_all
Challenge.destroy_all
User.destroy_all


user1 = User.create!(
  username: "sofia_jara",
  email: "sofia_jara@example.com",
  password: "sofia123", 
  role: "user",
  badges: 2
)

user2 = User.create!(
  username: "ignacio_wiechert",
  email: "ignacio_wiechert@example.com",
  password: "ignacio123",
  role: "user",
  badges: 5
)

user3 = User.create!(
  username: "antonia_grandon",
  email: "antonia_grandon@example.com",
  password: "antonia123",
  role: "admin",
  badges: 10
)

challenge1 = Challenge.create!(
  goal: "Run 42 kilometers in one month",
  name: "Marathon in a Month Challenge",
  description: "Accumulate kilometers in each run until you reach the marathon goal",
  categories: "Fitness, Running",
  start_date: Date.today,
  end_date: Date.today + 30.days,
  user: user3 
)

challenge2 = Challenge.create!(
  goal: "Run 21 kilometers in half a month",
  name: "Half Marathon in Half a Month Challenge",
  description: "Accumulate kilometers in each run until you reach the half-marathon goal",
  categories: "Fitness, Running",
  start_date: Date.today - 15.days,
  end_date: Date.today + 15.days,
  user: user1
)

challenge3 = Challenge.create!(
  goal: "Drink 2 liters of water per day",
  name: "Total Hydration",
  description: "A simple challenge to improve your health and overall well-being.",
  categories: "Health, Wellness",
  start_date: Date.today,
  end_date: Date.today + 7.days,
  user: user2
)

Progress.create!(
  user: user1,
  challenge: challenge1,
  points_earned: 15,
  update_frequency: "Daily"
)

Progress.create!(
  user: user2,
  challenge: challenge1,
  points_earned: 35,
  update_frequency: "Daily"
)

Progress.create!(
  user: user1,
  challenge: challenge2,
  points_earned: 2,
  update_frequency: "Weekly"
)

Progress.create!(
  user: user2,
  challenge: challenge3,
  points_earned: 7,
  update_frequency: "Daily"
)
