class RemoveValorUnitarioFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :valor_unitario, :decimal
  end
end
