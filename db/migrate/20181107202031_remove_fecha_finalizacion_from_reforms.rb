class RemoveFechaFinalizacionFromReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :fechaFinalizacion, :date
  end
end
