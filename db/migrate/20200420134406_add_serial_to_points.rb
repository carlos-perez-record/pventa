class AddSerialToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :serial, :string
  end
end
