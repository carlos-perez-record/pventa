class AddObraColumnsToReforms < ActiveRecord::Migration[5.2]
  def change
    add_column :reforms, :obra, :string
  end
end
