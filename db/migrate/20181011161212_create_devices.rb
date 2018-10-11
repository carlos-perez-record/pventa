class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :nombre
      t.string :tipo

      t.timestamps
    end
  end
end
