class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.boolean :view
      t.text :body
      t.string :img
      t.integer :phone
      t.string :email
      t.string :address
      t.string :facebook
      t.string :twitter
      t.references :articles, null: false, foreign_key: true
      t.string :info
      t.integer :horaA
      t.integer :minA
      t.integer :horaC
      t.integer :minC
      t.string :tiempoEspera

      t.timestamps
    end
  end
end
