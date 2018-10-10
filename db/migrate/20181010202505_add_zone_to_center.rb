class AddZoneToCenter < ActiveRecord::Migration[5.2]
  def change
    add_reference :centers, :zone, foreign_key: true
  end
end
