class RemoveArticlesIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :articles, foreign_key: true
  end
end
