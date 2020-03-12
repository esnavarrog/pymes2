class RemoveArticleIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :article, null: false, foreign_key: true
  end
end
