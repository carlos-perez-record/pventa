class RemoveUnidadFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :unidad, :integer
  end
end
