class AddBoxRedesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :box, :text
    add_column :products, :img1, :string
    add_column :products, :img2, :string
    add_column :products, :img3, :string
  end
end
