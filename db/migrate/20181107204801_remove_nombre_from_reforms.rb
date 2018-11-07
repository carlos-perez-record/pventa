class RemoveNombreFromReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :nombre, :string
  end
end
