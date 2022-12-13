class AddParagraph1ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :paragraph1, :text
  end
end
