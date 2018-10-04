class AddCeldaToTechnologies < ActiveRecord::Migration[5.2]
  def change
    add_column :technologies, :celda, :string
  end
end
