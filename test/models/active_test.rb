# == Schema Information
#
# Table name: actives
#
#  id         :bigint(8)        not null, primary key
#  ip         :string(255)
#  serial     :string(255)
#  placa      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  devices_id :bigint(8)
#

require 'test_helper'

class ActiveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
