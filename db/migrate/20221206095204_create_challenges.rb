class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.integer :number_of_points
      t.string :name

      t.timestamps
    end
  end
end
