class BookingsController < ApplicationController
  def create
    @user = User.find(params[:booking][:user])
    @room = Room.find(params[:room_id])
    if @user.booking
      redirect_to rooms_path, notice: 'Você não pode alugar mais de um quarto.'
    else
      @booking = Booking.new(room: @room, user_id: @user.id, checkin: Time.zone.now)
      @booking.save
      @user.booking_id = @booking.id
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
end
