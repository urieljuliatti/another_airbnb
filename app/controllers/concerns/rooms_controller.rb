class RoomsController < ApplicationController

  before_action :authenticate_user! 
  
  def index
    @rooms = Room.all
    @histories = BookingHistory.all
  end
end
