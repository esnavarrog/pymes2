class AddTipoPublicacionToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pub_destacada, :boolean
    add_column :products, :pub_normal, :boolean
  end
end
