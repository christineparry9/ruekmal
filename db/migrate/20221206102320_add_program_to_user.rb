class AddProgramToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :program, null: false, foreign_key: true
  end
end
