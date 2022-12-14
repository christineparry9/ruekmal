class AddParagraph3ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :paragraph3, :text
  end
end
