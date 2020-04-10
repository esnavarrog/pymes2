class AddMediosPagoToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :efectivo, :boolean
    add_column :products, :transferencia, :boolean
    add_column :products, :credito, :boolean
    add_column :products, :debito, :boolean
  end
end
