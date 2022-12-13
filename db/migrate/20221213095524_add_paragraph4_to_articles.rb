class AddParagraph4ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :paragraph4, :text
  end
end
