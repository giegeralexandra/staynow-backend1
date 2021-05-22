# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Autumn')
user_two = User.create(name: 'Alexandra')
user_three = User.create(name: 'Scott')
user_four = User.create(name: 'Patricia')

rental = Rental.create(name: 'Cute Home', description: 'very cute house', address: '123 House Dr', rental_type: 'house', price: 250 , owner_id: 1)
rental_two = Rental.create(name: 'Pretty Apartnment', description: 'very pretty apartment', address: '123 Apt Dr', rental_type: 'apartment', price: 100, owner_id: 2 )
rental_three = Rental.create(name: 'Nice Townhome', description: 'very nice townhouse', address: '123 Townhouse Dr', rental_type: 'townhouse', price: 350, owner_id: 2 )

reservation = Reservation.create(checkin: 2021-8-07, checkout: 2021-8-9, rental_id: 1, guest_id: 3)
reservation_two = Reservation.create(checkin: 2021-9-07, checkout: 2021-9-15, rental_id: 2, guest_id: 1)
reservation_three = Reservation.create(checkin: 2021-8-17, checkout: 2021-8-30, rental_id: 3, guest_id: 4)

trip = Trip.create(reservation_id: 1, review_id: 1, rental_id: 1, owner_id: 1, guest_id: 3)
trip_two = Trip.create(reservation_id: 2, review_id: 2, rental_id: 2, owner_id: 2, guest_id: 1)
trip_three = Trip.create(reservation_id: 3, review_id: 3, rental_id: 3, owner_id: 2, guest_id: 4)

review = Review.create(owner_id: 1, reservation_id: 1, guest_id: 3, rental_id: 1, description: 'really cute')
review_two = Review.create(owner_id: 2, reservation_id: 2, guest_id: 1, rental_id: 2, description: 'not very pretty')
review_three = Review.create(owner_id: 2, reservation_id: 3, guest_id: 4, rental_id: 3, description: 'sorta nice')