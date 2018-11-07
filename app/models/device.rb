# == Schema Information
#
# Table name: devices
#
#  id         :bigint(8)        not null, primary key
#  nombre     :string(255)
#  tipo       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Device < ApplicationRecord
  has_many :actives, dependent: :destroy
  validates :nombre, presence: true
end
