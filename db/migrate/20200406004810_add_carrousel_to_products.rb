class AddCarrouselToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :carrousel, :string
  end
end
