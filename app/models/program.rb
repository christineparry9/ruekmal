class Program < ApplicationRecord
has_many :users
has_many :program_exercises
has_many :exercises, through: :program_exercises
end
