class CreateActives < ActiveRecord::Migration[5.2]
  def change
    create_table :actives do |t|
      t.string :ip
      t.string :serial
      t.integer :placa

      t.timestamps
    end
  end
end
