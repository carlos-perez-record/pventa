# == Schema Information
#
# Table name: technologies
#
#  id          :bigint(8)        not null, primary key
#  descripcion :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Technology < ApplicationRecord
  # Con has many creo la relacion con la tabla puntos
  # con destroy implemento la eliminacion en cascada
  has_many :point, dependent: :destroy
  validates :descripcion, presence: true
end
