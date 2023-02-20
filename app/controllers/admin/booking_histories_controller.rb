class Admin::BookingHistoriesController < AdminController

  def index
    @booking_histories = BookingHistory.all
  end
end
