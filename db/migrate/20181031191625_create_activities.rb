class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :descripcion
      t.integer :unidad
      t.integer :cantidad
      t.float :vunitario
      t.float :vtotal

      t.timestamps
    end
  end
end
