class AddPhoneToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :phone, :string
  end
end
