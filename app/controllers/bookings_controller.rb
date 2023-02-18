class BookingsController < ApplicationController
  def create
    @user = User.find(params[:booking][:user])
    @room = Room.find(params[:room_id])
    if @user.booking
      flash[:error] = 'Você não pode alugar mais de um quarto.'
    else
      @booking = Booking.new(room: @room, user_id: @user.id, checkin: Time.now)
      @booking.save
      @user.booking_id = @booking.id
      @user.save
    end
    redirect_to rooms_path, notice: 'Checkin feito com sucesso.'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to rooms_path, notice: 'Checkout feito com sucesso.'
  end
end
