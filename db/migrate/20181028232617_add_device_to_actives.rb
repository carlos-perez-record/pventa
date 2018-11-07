class AddDeviceToActives < ActiveRecord::Migration[5.2]
  def change
    add_reference :actives, :devices, foreign_key: true
  end
end
