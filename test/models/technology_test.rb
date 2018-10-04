# == Schema Information
#
# Table name: technologies
#
#  id          :bigint(8)        not null, primary key
#  descripcion :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  serial      :string(255)
#  celda       :string(255)
#

require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
