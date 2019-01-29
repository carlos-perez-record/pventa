class AddPictureToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :picture, :string
  end
end
