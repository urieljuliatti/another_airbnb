class Admin::BookingHistoriesController < ApplicationController

  before_action :authenticate_user! 

  def index
    @booking_histories = BookingHistory.all
  end
end