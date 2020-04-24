class AddDevicesToIps < ActiveRecord::Migration[5.2]
  def change
    add_reference :ips, :device, foreign_key: true
  end
end
