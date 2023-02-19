class Booking < ApplicationRecord
  belongs_to :room
  has_one :user

  before_destroy :set_history

  def order
    minutes = total_time_at_room
    minutes.to_i * room.price
  end

  def total_time_at_room
    (checkout - checkin) / 1.minutes unless checkout.blank? || checkin.blank?
  end

  private

  def set_history
    history = BookingHistory.new
    history.room_id = self.room.id
    history.user_id = self.user.id
    history.price = self.room.price
    history.total_price = self.order
    history.total_time_at_room = self.total_time_at_room.to_i
    history.charged = false
    history.checkout = DateTime.now
    history.checkin = self.created_at
    history.save
    self.user = nil
  end
end
