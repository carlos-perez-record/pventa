class Point < ApplicationRecord
  mount_uploader :picture, FotoUploader
end
