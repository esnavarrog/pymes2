class AddDeliveryToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :delivery, :boolean
  end
end
