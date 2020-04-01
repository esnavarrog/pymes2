class AddHorariosToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :lunesA, :datetime
    add_column :products, :lunesC, :datetime
    add_column :products, :martesA, :datetime
    add_column :products, :martesC, :datetime
    add_column :products, :miercolesA, :datetime
    add_column :products, :miercolesC, :datetime
    add_column :products, :juevesA, :datetime
    add_column :products, :juevesC, :datetime
    add_column :products, :viernesA, :datetime
    add_column :products, :viernesC, :datetime
    add_column :products, :sabadoA, :datetime
    add_column :products, :sabadoC, :datetime
    add_column :products, :domingoA, :datetime
    add_column :products, :domingoC, :datetime
  end
end
