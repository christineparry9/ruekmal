class AddWorkplaceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :workplace, null: false, foreign_key: true
  end
end
