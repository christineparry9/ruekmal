class AddParagraph5ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :paragraph5, :text
  end
end
