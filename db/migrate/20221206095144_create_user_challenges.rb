class CreateUserChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :user_challenges do |t|
      t.boolean :completed

      t.timestamps
    end
  end
end
