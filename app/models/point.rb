# == Schema Information
#
# Table name: points
#
#  id            :bigint(8)        not null, primary key
#  codigo        :integer
#  nombre        :string(255)
#  direccion     :string(255)
#  telefono      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  picture       :string(255)
#  technology_id :bigint(8)
#  center_id     :bigint(8)
#  serial        :string(255)
#  celda         :string(255)
#

class Point < ApplicationRecord
  mount_uploader :picture, FotoUploader
  has_many :reforms
  has_many :ips
  belongs_to :technology
  belongs_to :center
  # Se implementan las validaciones.
  validates :codigo, :nombre, :direccion, :telefono, :center_id, presence: true

end
