class AddTechnologyToPoint < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :technology, foreign_key: true
  end
end
