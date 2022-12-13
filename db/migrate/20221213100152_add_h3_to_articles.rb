class AddH3ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :h3, :string
  end
end
