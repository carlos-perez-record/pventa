# == Schema Information
#
# Table name: centers
#
#  id         :bigint(8)        not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zone_id    :bigint(8)
#

class Center < ApplicationRecord
  has_many :point, dependent: :destroy
  belongs_to :zone
  validates :nombre, presence: true

  def to_s
    nombre
  end
end
