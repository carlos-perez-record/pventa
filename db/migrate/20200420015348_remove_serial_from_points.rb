class RemoveSerialFromPoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :points, :serial, :string
  end
end
