class RemoveCeldaAtFromTechnology < ActiveRecord::Migration[5.2]
  def change
    remove_column :technologies, :celda, :string
  end
end
