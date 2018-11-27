class CreateUnities < ActiveRecord::Migration[5.2]
  def change
    create_table :unities do |t|
      t.string :unidad
      t.string :sigla

      t.timestamps
    end
  end
end
