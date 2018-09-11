# == Schema Information
#
# Table name: points
#
#  id         :bigint(8)        not null, primary key
#  codigo     :integer
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string(255)
#

class Point < ApplicationRecord
  mount_uploader :picture, FotoUploader
end
