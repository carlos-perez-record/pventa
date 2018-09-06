class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer :codigo
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
