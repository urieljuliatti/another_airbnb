class BookingsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @user = User.find(params[:booking][:user_id])
    if @user.booking
      redirect_to rooms_path, alert: 'Você não pode alugar mais de um quarto.'
    else
      @booking = Booking.new(booking_params)
      @booking.checkin = Time.now
      @booking.room = @room
      @booking.save
      @user.build_booking
      @user.booking = @booking
      @user.save
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
