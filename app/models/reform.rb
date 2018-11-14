class Reform < ApplicationRecord
  belongs_to :point
  has_many :task
end
