class AddRedesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :instagram, :string
    add_column :products, :palabras, :text
    add_column :products, :web, :string
  end
end
