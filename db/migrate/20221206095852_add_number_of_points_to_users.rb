class AddNumberOfPointsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :number_of_points, :boolean
  end
end
