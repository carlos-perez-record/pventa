class AddSerialToTechnologies < ActiveRecord::Migration[5.2]
  def change
    add_column :technologies, :serial, :string
  end
end
