class AddDropdownToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :dropdown, :string
  end
end
