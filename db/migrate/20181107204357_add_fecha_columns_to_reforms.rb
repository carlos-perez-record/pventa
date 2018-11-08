class AddFechaColumnsToReforms < ActiveRecord::Migration[5.2]
  def change
    add_column :reforms, :fecha, :date
  end
end
