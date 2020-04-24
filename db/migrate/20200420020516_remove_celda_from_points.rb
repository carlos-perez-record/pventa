class RemoveCeldaFromPoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :points, :celda, :string
  end
end
