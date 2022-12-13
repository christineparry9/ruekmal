# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
User.destroy_all
ProgramExercise.destroy_all
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

#creating some questions/answers for the knowledge page

question1 = Question.new(content: "What position is best for your back when you sleep? On the back or on one side with the knees flexed toward the chest?")
question1.save!
question2 = Question.new(content: "Which of these sports can cause dangerous back injuries? Swimming or volleyball?")
question2.save!
question3 = Question.new(content: "Disks cushion vertebrae in the back. They are made of bones or cartilage?")
question3.save!
# question5 = Question.new(content: "Which of these is a significant risk factor for backache? Being overweight or beeing short?")
# question5.save!
# question6 = Question.new(content: "Which of these measures will help a backache? Several days of bed rest or massage and ice?")
# question6.save!
# question7 = Question.new(content: "How should you lift a heavy object? Bend from the waist or squat, then lift" )
# question7.save!
# question8 = Question.new(content: "What are the warning signs of a herniated disk? Shooting back pain when you cough, with numbness and lower back pain or shouder pain? ")
# question8.save!




answer1 = Answer.new(content: "On one side with the knees flexed toward the chest", question: question1, correct: true)
answer1.save!
answer2 = Answer.new(content: "On the back with only one pillow behind the head and another one under the knees", question: question1, correct: false)
answer2.save!
answer3 = Answer.new(content: "swimming, because it seeks to many muscles at the same time", question: question2, correct: false )
answer3.save!
answer4 = Answer.new(content: "Volleyball as it can gives several repeated traumas", question: question2, correct: true)
answer4.save!
answer5 = Answer.new(content: "Cartilage.Ligaments encase the disk", question: question3, correct: true )
answer5.save!
answer6 = Answer.new(content: "Bones. ligaments and cartilage encase the disk", question: question3, correct: false)
answer6.save!

article1 = Article.new


10.times do
  article = Article.new(
    title: Faker::Movie.title,
    reading_time: rand(1..5),
    category: ["for you", "lower back", "neck", "shoulder"].sample,
  )
  article.save!
end
