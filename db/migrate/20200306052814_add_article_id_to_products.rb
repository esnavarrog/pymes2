class AddArticleIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :article, foreign_key: true
  end
end
