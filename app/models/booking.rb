class Booking < ApplicationRecord
  belongs_to :room
  has_one :user
end
