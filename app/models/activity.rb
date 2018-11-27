class Activity < ApplicationRecord
  has_many :task
  belongs_to :reform
end
