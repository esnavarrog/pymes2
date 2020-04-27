class RemovePhoneFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :phone, :integer
  end
end
