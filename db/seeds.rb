# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: 'Francisco', last_name: 'Borie', email: 'fjborie@miuandes.cl', phone: '987654321', password: 'password123', address: 'San Carlos de Apoquindo 2200')
user_2 = User.create(name: 'Diego', last_name: 'Beckdorf', email: 'dbeckdorf@miuandes.cl', phone: '987654321', password: 'password123', address: 'San Carlos de Apoquindo 2200')
user_3 = User.create(name: 'Maximiliano', last_name: 'Garcia', email: 'mrgarcia1@miuandes.cl', phone: '987654321', password: 'password123', address: 'San Carlos de Apoquindo 2200')

place_1 = Place.create(name: 'Estadio Nacional Julio Martínez Prádanos', address:'Av. Grecia 2001', capacity: 50000)
place_2 = Place.create(name: 'Teatro Nacional Chileno', address:'San Diego 850', capacity: 5000)


event_1 = Event.create(name: 'ICPC 2018', start_date: DateTime.new(2019, 05, 15), place: place_1)
event_2 = Event.create(name: 'Facebook Hackathon 2018', start_date: DateTime.new(2019, 05, 20), place: place_1)
event_3 = Event.create(name: 'Lollapalooza 2018', start_date: DateTime.new(2019, 06, 25), place: place_2)
event_4 = Event.create(name: 'Festival de Viña 2018', start_date: DateTime.new(2019, 06, 30), place: place_2)

ticket_1 = Ticket.create(price: 5000, event: event_1)
ticket_2 = Ticket.create(price: 5000, event: event_1)
ticket_3 = Ticket.create(price: 5000, event: event_1)
ticket_4 = Ticket.create(price: 5000, event: event_2)
ticket_5 = Ticket.create(price: 6000, event: event_2)
ticket_6 = Ticket.create(price: 6000, event: event_2)
ticket_7 = Ticket.create(price: 6000, event: event_3)
ticket_8 = Ticket.create(price: 6000, event: event_3)
ticket_9 = Ticket.create(price: 4000, event: event_3)
ticket_10 = Ticket.create(price: 4000, event: event_4)
ticket_11 = Ticket.create(price: 4000, event: event_4)
ticket_12 = Ticket.create(price: 4000, event: event_4)
Ticket.create(price: 8000, event: event_1)
Ticket.create(price: 8000, event: event_2)
Ticket.create(price: 8000, event: event_3)
Ticket.create(price: 8000, event: event_4)
Ticket.create(price: 9000, event: event_1)
Ticket.create(price: 9000, event: event_2)

UserTicket.create(user: user_1, ticket: ticket_1, paid: true, time: DateTime.now())
UserTicket.create(user: user_2, ticket: ticket_2, paid: true, time: DateTime.now())
UserTicket.create(user: user_3, ticket: ticket_3, paid: true, time: DateTime.now())
UserTicket.create(user: user_1, ticket: ticket_4, paid: true, time: DateTime.now())
UserTicket.create(user: user_2, ticket: ticket_5, paid: true, time: DateTime.now())
UserTicket.create(user: user_3, ticket: ticket_6, paid: true, time: DateTime.now())
UserTicket.create(user: user_1, ticket: ticket_7, paid: true, time: DateTime.now())
UserTicket.create(user: user_2, ticket: ticket_8, paid: true, time: DateTime.now())
UserTicket.create(user: user_3, ticket: ticket_9, paid: true, time: DateTime.now())
UserTicket.create(user: user_1, ticket: ticket_10, paid: true, time: DateTime.now())
UserTicket.create(user: user_2, ticket: ticket_11, paid: true, time: DateTime.now())
UserTicket.create(user: user_3, ticket: ticket_12, paid: true, time: DateTime.now())
