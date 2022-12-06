class Exercise < ApplicationRecord
  has_many :programs, through: :program_exercises
  has_many :program_exercises
end
