class AddProductIdToPops < ActiveRecord::Migration[6.0]
  def change
    add_reference :pops, :product, foreign_key: true
  end
end
