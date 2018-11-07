class RemoveEstadoActualFromReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :estadoActual, :string
  end
end
