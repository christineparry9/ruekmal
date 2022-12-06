class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :program_length
      t.integer :standing_points_goal
      t.float :standing_goal
      t.float :overal_standing_goal

      t.timestamps
    end
  end
end
