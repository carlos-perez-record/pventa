class CreateUses < ActiveRecord::Migration[5.2]
  def change
    create_table :uses do |t|
      t.string :description

      t.timestamps
    end
  end
end
