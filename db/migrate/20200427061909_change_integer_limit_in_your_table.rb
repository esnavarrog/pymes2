class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :phone, :integer, limit: 8
  end
end
