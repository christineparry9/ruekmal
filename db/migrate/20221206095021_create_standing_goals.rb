class CreateStandingGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :standing_goals do |t|
      t.boolean :completed

      t.timestamps
    end
  end
end
