class RemoveSerialAtFromTechnology < ActiveRecord::Migration[5.2]
  def change
    remove_column :technologies, :serial, :string
  end
end
