# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
situations = [
   "Pitch Night",
   "Cocktail Party",
   "Halloween Party",
   "Park",
   "Gym",
   "Comedy Club",
   "Movies",
   "Funeral"
 ]

targets = [
  "Hiring Partner",
  "Business Partner",
  "Woman",
  "Man",
  "Ex-love",
  "Grieving Woman",
  "Man in Mourning",
  "Classmate"
]

settings = [
  "Business",
  "Romantic",
  "Social",
  "Casual",
  "Formal",
  "Upscale",
  "Grungy",
  "Friendly"
]

quips = [
  "Excuse me, I just acquired this great new app and it told me to greet you!",

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

Quip.create(tips: "Look at this amazing app, the developers would love a job!", context_id: 1, setting_id: 1, target_id: 1)
Quip.create(tips: "Excuse me, I have this amazing app and it told me to tell you that I'm available for work.", context_id: 1, setting_id: 1, target_id: 1)
