class AddPuntoToReform < ActiveRecord::Migration[5.2]
  def change
    add_reference :reforms, :point, foreign_key: true
  end
end
