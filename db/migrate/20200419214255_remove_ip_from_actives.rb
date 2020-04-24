class RemoveIpFromActives < ActiveRecord::Migration[5.2]
  def change
    remove_column :actives, :ip, :string
  end
end
