class AddCantidad2ToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :cantidad, :decimal
  end
end
