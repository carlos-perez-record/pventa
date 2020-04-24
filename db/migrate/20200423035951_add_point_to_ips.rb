class AddPointToIps < ActiveRecord::Migration[5.2]
  def change
    add_reference :ips, :point, foreign_key: true
  end
end
