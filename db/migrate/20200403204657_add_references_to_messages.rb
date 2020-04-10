class AddReferencesToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :product, foreign_key: true
  end
end
