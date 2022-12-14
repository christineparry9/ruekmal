class AddH4ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :h4, :string
  end
end
