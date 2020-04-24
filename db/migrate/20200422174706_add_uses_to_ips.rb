class AddUsesToIps < ActiveRecord::Migration[5.2]
  def change
    add_reference :ips, :use, foreign_key: true
  end
end
