class AddTitleToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :title, :string
  end
end
