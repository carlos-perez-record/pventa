class RemoveDescripcionReformaFromToReforms < ActiveRecord::Migration[5.2]
  def change
    remove_column :reforms, :descripcionReforma, :string
  end
end
