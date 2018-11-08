class AddProyectoColumnsToReforms < ActiveRecord::Migration[5.2]
  def change
    add_column :reforms, :proyecto, :string
  end
end
