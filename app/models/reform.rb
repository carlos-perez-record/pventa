class Reform < ApplicationRecord
  belongs_to :point
  belongs_to :modification
  has_many :task
end
