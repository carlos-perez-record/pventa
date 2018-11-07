class RemoveValorFromReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :valor, :float
  end
end
