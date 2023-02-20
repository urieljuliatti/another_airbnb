class Admin::BookingHistoriesController < AdminController

  def index
    @booking_histories = BookingHistory.all
  end

  def update
    @booking_history = BookingHistory.find(params[:id])
    @booking_history.charged = true
    @booking_history.save
    redirect_to admin_booking_histories_path, notice: 'Quarto cobrado.'
  end
end
