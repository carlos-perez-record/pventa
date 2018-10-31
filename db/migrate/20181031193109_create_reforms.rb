class CreateReforms < ActiveRecord::Migration[5.2]
  def change
    create_table :reforms do |t|
      t.date :fechaIntervenciion
      t.date :fechaFinalizacion
      t.string :estadoActual
      t.string :descripcionReforma
      t.float :valor

      t.timestamps
    end
  end
end
