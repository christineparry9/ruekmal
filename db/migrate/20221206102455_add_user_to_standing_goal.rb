class AddUserToStandingGoal < ActiveRecord::Migration[7.0]
  def change
    add_reference :standing_goals, :user, null: false, foreign_key: true
  end
end
