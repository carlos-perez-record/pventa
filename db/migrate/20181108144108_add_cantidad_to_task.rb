class AddCantidadToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :cantidad, :integer
    add_column :tasks, :valor_unitario, :decimal
  end
end
