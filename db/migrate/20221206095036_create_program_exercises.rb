class CreateProgramExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :program_exercises do |t|

      t.timestamps
    end
  end
end
