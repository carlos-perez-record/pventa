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
  has_many :point
end
