class AddH5ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :h5, :string
  end
end
