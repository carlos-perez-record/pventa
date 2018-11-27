class AddReformColumnsToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :reform, foreign_key: true
  end
end
