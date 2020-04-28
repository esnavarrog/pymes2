class AddTelefonoToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :telefono, :string
  end
end
