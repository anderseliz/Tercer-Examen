class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.references :worker

      t.timestamps null: false
    end
  end
end
