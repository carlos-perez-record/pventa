class RemoveValorUnitarioFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :valor_unitario, :integer
  end
end
