class RemoveFechaIntervenciionFromReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :fechaIntervenciion, :date
  end
end
