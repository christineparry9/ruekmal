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
ProgramExercise.destroy_all
Exercise.destroy_all
Answer.destroy_all
Question.destroy_all

workplace = Workplace.new(name: "Microsoft")
workplace.save
program1 = Program.create(name: "Lower back pain", standing_points_goal: 120, standing_goal: 180, program_length: 7)
program2 = Program.create(name: "Upper back pain", standing_points_goal: 120, standing_goal: 180, program_length: 10)
program3 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program4 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program5 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program6 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)

user1 = User.new(number_of_points: 22, first_name: "Christine", program: program1, workplace: workplace, email: "christine@test.com", password: "testtest", password_confirmation: "testtest")
user1.save!

user2 = User.new(number_of_points: 25, first_name: "Lena", program: program1, workplace: workplace, email: "lena@test.com", password: "testtest", password_confirmation: "testtest")
user2.save!
p user2

user3 = User.new(number_of_points: 60, first_name: "Constance", program: program1, workplace: workplace, email: "constance@test.com", password: "testtest", password_confirmation: "testtest")
user3.save!

user4 = User.new(number_of_points: 5, first_name: "Dareos", program: program1, workplace: workplace, email: "dareos@test.com", password: "testtest", password_confirmation: "testtest")
user4.save!

user5 = User.new(number_of_points: 20, first_name: "Domenico", program: program1, workplace: workplace, email: "domenico@test.com", password: "testtest", password_confirmation: "testtest")
user5.save!

exercise1 = Exercise.new(category: "neck", video_url: "https://www.youtube.com/embed/t_uR01Dx9Mk", length: 3)
exercise1.save

exercise2 = Exercise.new(category: "neck", video_url: "https://www.youtube.com/embed/XtHfEI5DUE0", length: 5)
exercise2.save

exercise3 = Exercise.new(category: "upper", video_url: "https://www.youtube.com/embed/XeXz8fIZDCE", length: 8)
exercise3.save

exercise4 = Exercise.new(category: "upper", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 4)
exercise4.save

exercise5 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/2VuLBYrgG94", length: 10)
exercise5.save

exercise6 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/3Z2fZ7TCBfw", length: 2)
exercise6.save


program_exercise = ProgramExercise.new(exercise: exercise1, program: program1)
program_exercise.save


10.times do
  article = Article.new(
    title: Faker::Movie.title,
    reading_time: rand(1..5),
    category: ["for you", "lower back", "neck", "shoulder"].sample,
    image: Faker::LoremFlickr.image,
  )
  article.save!
end
10.times do
  question = Question.new(
    content: Faker::Movie.title,
  )
  answer = Answer.new(
    content: Faker::Movie.title,
    correct: true
  )
  answer_two = Answer.new(
    content: Faker::Movie.title,
    correct: false
  )
 question.save!
  answer.question = question
 answer.save!
 answer_two.question = question
 answer_two.save!
end
