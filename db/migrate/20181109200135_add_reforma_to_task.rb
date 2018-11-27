class AddReformaToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :reform, foreign_key: true
  end
end
