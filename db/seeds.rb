# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
User.destroy_all
Article.destroy_all
Exercise.destroy_all

workplace = Workplace.new(name: "Microsoft")
workplace.save
program1 = Program.new(name: "Lower back pain", standing_points_goal: 120, standing_goal: 180, program_length: 7)
program1.save

user1 = User.new(number_of_points: 30, first_name: "Christine", program: program1, workplace: workplace, email: "christine@test.com", password: "testtest", password_confirmation: "testtest")
user1.save!

user2 = User.new(number_of_points: 25, first_name: "Lena", program: program1, workplace: workplace, email: "lena@test.com", password: "testtest", password_confirmation: "testtest")
user2.save!
p user2

user3 = User.new(number_of_points: 60, first_name: "Constance", program: program1, workplace: workplace, email: "constance@test.com", password: "testtest", password_confirmation: "testtest")
user3.save!

exercise1 = Exercise.new(category: "lower back", video_url: "https://www.youtube.com/embed/t_uR01Dx9Mk", length: 90)
exercise1.save

exercise2 = Exercise.new(category: "upper back", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 90)
exercise2.save

exercise3 = Exercise.new(category: "upper back", video_url: "https://www.youtube.com/embed/XeXz8fIZDCE", length: 90)
exercise3.save

exercise4 = Exercise.new(category: "upper back", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 90)
exercise4.save

exercise5 = Exercise.new(category: "upper back", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 90)
exercise5.save

exercise6 = Exercise.new(category: "upper back", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 90)
exercise6.save

program_exercise = ProgramExercise.new(exercise: exercise1, program: program1)
program_exercise.save

10.times do
  article = Article.new(
    title: Faker::Movie.title,
    reading_time: rand(1..5)
  )
  article.save!
end

10.times do
  question = Question.new(
    content: Faker::Movie.title,
  )
  answer = Answer.new(
    content: Faker::Movie.title,
  )
 question.save!
  answer.question = question
 answer.save!
end
