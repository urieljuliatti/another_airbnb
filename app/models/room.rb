class Room < ApplicationRecord
  has_one :booking

  validates :title, uniqueness: true
end
