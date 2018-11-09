class AddValorUnitarioToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :valor_unitario, :decimal
  end
end
