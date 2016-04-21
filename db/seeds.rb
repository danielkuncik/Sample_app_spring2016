# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Example User",
             email: "Example@rails.org",
             password: "foobar",
             password_confirmation: "foobar")


first_president = Question.create(content: "Who was the first president?")


## this didn't work, it created answer objects but not associated with the first_president question
## scratch that, it worked!, i just was confused because I ran the seed too many times
first_president.answers.create(content:"George Washington", correct: true)
first_president.answers.create(content:"Abe Lincoln", correct: false)
first_president.answers.create(content:"Teddy Roosevelt", correct: false)
first_president.answers.create(content:"John Kennedy", correct: false)


users = User.order(:created_at).take(1)
20.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end