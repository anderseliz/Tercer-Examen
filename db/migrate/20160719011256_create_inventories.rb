class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :serie, null: false
      t.integer :tamanio
      t.string :descripcion

      t.timestamps null: false
    end
    add_index :inventories, :serie, unique: true
  end
end
