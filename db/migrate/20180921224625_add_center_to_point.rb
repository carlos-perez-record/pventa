class AddCenterToPoint < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :center, foreign_key: true
  end
end
