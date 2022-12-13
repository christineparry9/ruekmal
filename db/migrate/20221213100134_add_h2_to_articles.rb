class AddH2ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :h2, :string
  end
end
