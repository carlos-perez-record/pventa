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
end
