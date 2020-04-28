class AddMobilToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :mobil1, :string
    add_column :products, :mobil2, :string
  end
end
