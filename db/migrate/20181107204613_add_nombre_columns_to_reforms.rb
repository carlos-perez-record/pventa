class AddNombreColumnsToReforms < ActiveRecord::Migration[5.2]
  def change
    add_column :reforms, :nombre, :string
  end
end
