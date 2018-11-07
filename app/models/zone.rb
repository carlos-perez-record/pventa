# == Schema Information
#
# Table name: zones
#
#  id         :bigint(8)        not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Zone < ApplicationRecord
  has_many :centers, dependent: :destroy
  validates :nombre, presence: true

  accepts_nested_attributes_for :centers

  def to_s
    nombre
  end
end
