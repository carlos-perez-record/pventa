class CreateModifications < ActiveRecord::Migration[5.2]
  def change
    create_table :modifications do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
