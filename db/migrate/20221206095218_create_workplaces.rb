class CreateWorkplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workplaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
