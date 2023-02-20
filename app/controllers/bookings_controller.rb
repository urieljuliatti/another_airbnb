class BookingsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    if current_user.booking
      redirect_to rooms_path, notice: 'Você não pode alugar mais de um quarto.'
    else
      @booking = Booking.new(booking_params)
      @booking.checkin = Time.now
      @booking.room = @room
      @booking.save
      current_user.build_booking
      current_user.booking = @booking
      current_user.save
      redirect_to rooms_path, notice: 'Checkin feito com sucesso.'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.checkout = Time.zone.now
    @booking.destroy
    redirect_to rooms_path, notice: 'Checkout feito com sucesso.'
  end

  private

  def booking_params
    params.require(:booking).permit(:room, :checkin, :checkout, :user_id)
  end
end
