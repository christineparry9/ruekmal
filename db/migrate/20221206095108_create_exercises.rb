class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :category
      t.string :video_url
      t.integer :length

      t.timestamps
    end
  end
end
