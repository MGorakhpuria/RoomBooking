# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

company = Company.create(name: "Indian Hotels Company Limited", description: "The Indian Hotels Company Limited is an Indian hospitality company that manages a portfolio of hotels, resorts, jungle safaris, palaces, spas and in-flight catering services. The company is part of India's Tata Group")

h1 = Hotel.create(name: "The Taj Mahal Palace", description: "Taj Hotels is a chain of luxury hotels and a subsidiary of the Indian Hotels Company Limited, headquartered in Mumbai, India.", city: "Mumbai", state: "Maharashtra", company: company)
h2 = Hotel.create(name: "Taj Mahal Tower", description: "Taj Hotels is a chain of luxury hotels and a subsidiary of the Indian Hotels Company Limited, headquartered in Mumbai, India.", city: "Mumbai", state: "Maharashtra", company: company)
h3 = Hotel.create(name: "Ginger", description: "Taj Hotels is a chain of luxury hotels and a subsidiary of the Indian Hotels Company Limited, headquartered in Mumbai, India.", city: "Indore", state: "Madhya Pradesh", company: company)

Room.create(room_no: 101 , room_type: "Luxury Room", status: "active", hotel: h1)
Room.create(room_no: 102 , room_type: "Deluxe Room", status: "active", hotel: h1)
Room.create(room_no: 103 , room_type: "Luxury Room", status: "active", hotel: h1)
Room.create(room_no: 104 , room_type: "Luxury Room", status: "active", hotel: h1)
Room.create(room_no: 105 , room_type: "Luxury Room", status: "active", hotel: h1)


Room.create(room_no: 101 , room_type: "Luxury Room", status: "active", hotel: h2)
Room.create(room_no: 102 , room_type: "Deluxe Room", status: "active", hotel: h2)
Room.create(room_no: 103 , room_type: "Luxury Room", status: "active", hotel: h2)
Room.create(room_no: 104 , room_type: "Luxury Room", status: "active", hotel: h2)
Room.create(room_no: 105 , room_type: "Luxury Room", status: "active", hotel: h2)

Room.create(room_no: 101 , room_type: "Luxury Room", status: "active", hotel: h3)
Room.create(room_no: 102 , room_type: "Deluxe Room", status: "active", hotel: h3)
Room.create(room_no: 103 , room_type: "Luxury Room", status: "active", hotel: h3)
Room.create(room_no: 104 , room_type: "Luxury Room", status: "active", hotel: h3)
Room.create(room_no: 105 , room_type: "Luxury Room", status: "active", hotel: h3)

User.create(name: "Mayank", email: "mayank@gmail.com")