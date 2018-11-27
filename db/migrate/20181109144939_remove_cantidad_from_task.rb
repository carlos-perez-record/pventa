class RemoveCantidadFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :cantidad, :integer
  end
end
