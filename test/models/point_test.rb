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

require 'test_helper'

class PointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
