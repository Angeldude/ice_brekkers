# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
situations = ["School",
   "Cocktail Party",
   "Halloween Party",
   "Park",
   "Gym",
   "Comedy",
   "Movies"]
targets = [
  "Mother",
  "Firefighter",
  "Hitman",
  "Postman",
  "Bounty Hunter",
  "Repo man",
  "Fugitive",
  "Serial Killer",
  "Homicide Detective",
  "Alcoholic",
  "Drug Lord",
  "Wedding Planner",
  "Woman",
  "Man",
  "Child Actor",
  "Hand Model"
]

situations.each do |s|
  Context.create(situation: s)
end

targets.each do |t|
  Target.create(person: t)
end
