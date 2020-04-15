class AddOthersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :country, :string
    add_column :users, :biografia, :text
  end
end
