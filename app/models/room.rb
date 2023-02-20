class Room < ApplicationRecord
  has_one :booking
  accepts_nested_attributes_for :booking
  validates :title, uniqueness: true
end
