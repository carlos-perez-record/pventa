class RemoveReformFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tasks, :reform_id, foreign_key: true
  end
end
