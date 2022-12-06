class AddProgramToProgramExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :program_exercises, :program, null: false, foreign_key: true
  end
end
