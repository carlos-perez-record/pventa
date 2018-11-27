class AddModificacionToReform < ActiveRecord::Migration[5.2]
  def change
    add_reference :reforms, :modification, foreign_key: true
  end
end
