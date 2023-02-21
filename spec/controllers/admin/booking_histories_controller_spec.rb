# frozen_string_literal: true

require 'rails_helper'
require 'support/devise'

RSpec.describe Admin::BookingHistoriesController, type: :controller do

  login_admin

  describe 'GET index' do
    it 'assigns @booking_histories' do
      booking_histories = create_list :booking_history, 3
      get :index
      expect(assigns(:booking_histories)).to eq(booking_histories)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'PUT update' do
    let(:booking_history) { create(:booking_history) }
    subject { post :update, params: { id: booking_history.id, charged: true } }

    it 'redirects_to admin_booking_histories' do
      subject
      expect(subject).to redirect_to(admin_booking_histories_path)
      booking_history.reload
      expect(booking_history.charged).to eq (true)
    end
    it 'notice as charged' do
      subject
      expect(flash[:notice]).to match(/Quarto cobrado.*/)
    end
  end
end
