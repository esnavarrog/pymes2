class AddReferencesToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :image, :string
    add_reference :articles, :product, foreign_key: true
  end
end
