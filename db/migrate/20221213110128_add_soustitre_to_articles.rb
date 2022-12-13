class AddSoustitreToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :soustitre, :text
  end
end
