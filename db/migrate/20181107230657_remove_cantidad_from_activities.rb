class RemoveCantidadFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :cantidad, :integer
  end
end
