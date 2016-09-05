# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

francis = User.create({name: "Francis", password: "password"})
gab = User.create({name: "Gabriella", password: "password"})

elmont = Route.create({name: "Elmont 5K", distance: 3.1})
boston = Route.create({name: "Boston Bridge Run", distance: 4})
central_park = Route.create({name: "Central Park 5M", distance: 5})

UserRoute.create({user_id: francis.id, route_id: elmont.id})
UserRoute.create({user_id: francis.id, route_id: boston.id})
UserRoute.create({user_id: francis.id, route_id: central_park.id})
UserRoute.create({user_id: gab.id, route_id: elmont.id})

Run.create({name: "Sunny Sunday with Gabriella", route_id: elmont.id, user_id: francis.id, time: 24.32})
Run.create({name: "Sunny Sunday with Francis", route_id: elmont.id, user_id: gab.id, time: 24.54})
Run.create({name: "Boston Blues", route_id: boston.id, user_id: francis.id, time: 33.25})
Run.create({name: "Awesome Boston", route_id: boston.id, user_id: francis.id, time: 31.75})
Run.create({name: "Central Park Race", route_id: central_park.id, user_id: francis.id, time: 39.0})
