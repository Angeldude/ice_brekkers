# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
situations = [
   "School",
   "Cocktail Party",
   "Halloween Party",
   "Park",
   "Gym",
   "Comedy Club",
   "Movies",
   "Funeral"
 ]

targets = [
  "Woman",
  "Man",
  "Ex-love",
  "Business Partner",
  "Business Person",
  "Grieving Woman",
  "Man in Mourning",
  "Classmate"
]

settings = [
  "Romantic",
  "Business",
  "Social",
  "Casual",
  "Formal",
  "Upscale",
  "Grungy"
]

situations.each do |s|
  Context.create(situation: s)
end

targets.each do |t|
  Target.create(person: t)
end

settings.each do |s|
  Setting.create(set: s)
end
