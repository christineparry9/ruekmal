class AddParagraph2ToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :paragraph2, :text
  end
end
