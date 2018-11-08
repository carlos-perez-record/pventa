class AddValorUnitarioToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :valor_unitario, :integer
  end
end
