class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
