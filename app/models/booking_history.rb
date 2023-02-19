class BookingHistory < ApplicationRecord

  def room
    Room.find(self.room_id)
  end

  def user
    User.find(self.user_id)
  end

  def formatted_checkin
    self.checkin.strftime('%d/%m/%y às %H:%M')
  end

  def formatted_checkout
    self.checkout.strftime('%d/%m/%y às %H:%M')
  end

end
