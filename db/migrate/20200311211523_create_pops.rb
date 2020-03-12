class CreatePops < ActiveRecord::Migration[6.0]
  def change
    create_table :pops do |t|
      t.string :title
      t.boolean :destacado
      t.string :descripcion
      t.integer :precio
      t.string :avatar
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
