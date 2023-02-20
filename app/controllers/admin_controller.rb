class AdminController < ApplicationController
  before_action :authenticate_user! 
  before_action :authorized_user

  private
  
  def authorized_user
    redirect_to rooms_path, notice: 'Você não possui autorização.' unless current_user.admin?
  end
end