class AddTipoPublicacion1ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pub_clasificado, :boolean
  end
end
