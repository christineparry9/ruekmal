class AddStandingStatusToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :standing_status, :boolean
  end
end
