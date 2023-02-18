class Booking < ApplicationRecord
  belongs_to :room
  has_one :user

  before_destroy :set_history

  def order
    minutes = time_at_room
    minutes.to_i * room.price
  end

  def time_at_room
    (checkout - checkin) / 1.minutes unless checkout.blank? || checkin.blank?
  end

  private

  def set_history
    self.user = nil
  end
end
