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
  username: "ana_fit",
  email: "ana@example.com",
  password: "password123", 
  role: "user",
  badges: 2
)

user2 = User.create!(
  username: "carlos_runner",
  email: "carlos@example.com",
  password: "password123",
  role: "user",
  badges: 5
)

user3 = User.create!(
  username: "admin_pro",
  email: "admin@example.com",
  password: "adminpass",
  role: "admin",
  badges: 10
)

challenge1 = Challenge.create!(
  goal: "Correr 42 kilómetros en un mes",
  name: "Reto Maratón Mensual",
  description: "Acumula kilómetros en cada carrera hasta alcanzar la meta de una maratón.",
  categories: "Fitness, Running",
  start_date: Date.today,
  end_date: Date.today + 30.days,
  user: user3 
)

challenge2 = Challenge.create!(
  goal: "Leer 3 libros en 30 días",
  name: "Club de Lectura Intensivo",
  description: "Expande tu mente y devora tres libros de tu elección este mes.",
  categories: "Educación, Desarrollo Personal",
  start_date: Date.today - 15.days,
  end_date: Date.today + 15.days,
  user: user1
)

challenge3 = Challenge.create!(
  goal: "Beber 2 litros de agua al día",
  name: "Hidratación Total",
  description: "Un reto simple para mejorar tu salud y bienestar general.",
  categories: "Salud, Bienestar",
  start_date: Date.today,
  end_date: Date.today + 7.days,
  user: user2
)

Progress.create!(
  user: user1,
  challenge: challenge1,
  points_earned: 15,
  update_frequency: "Diaria"
)

Progress.create!(
  user: user2,
  challenge: challenge1,
  points_earned: 35,
  update_frequency: "Diaria"
)

Progress.create!(
  user: user1,
  challenge: challenge2,
  points_earned: 2,
  update_frequency: "Semanal"
)

Progress.create!(
  user: user2,
  challenge: challenge3,
  points_earned: 7,
  update_frequency: "Diaria"
)
