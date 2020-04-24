class AddCeldaToPoint < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :celda, :string
  end
end
