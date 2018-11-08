class RemoveValorFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :vunitario, :float
    remove_column :activities, :vtotal, :float
  end
end
