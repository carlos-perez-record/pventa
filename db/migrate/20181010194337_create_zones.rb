class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
