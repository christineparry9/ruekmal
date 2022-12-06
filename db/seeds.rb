# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

workplace = Workplace.new(name: "Microsoft")
workplace.save
program1 = Program.new(name: "Lower back pain", standing_points_goal: 120, standing_goal: 180, program_length: 7)
program1.save

user = User.new(first_name: "Christine", program: program1, workplace: workplace, email: "abcde@gmail.com", password: "TestABC", password_confirmation: "TestABC")
user.save
exercise1 = Exercise.new(category: "lower back", video_url: "www.test.com", length: 90)
exercise1.save

program_exercise = ProgramExercise.new(exercise: exercise1, program: program1)
program_exercise.save
