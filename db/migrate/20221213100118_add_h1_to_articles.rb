class AddH1ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :h1, :string
  end
end
