# frozen_string_literal: true

require 'rails_helper'
require 'support/devise'

RSpec.describe BookingsController, type: :controller do
  login_user

  let(:room) { create(:room) }
  let(:booking) { create(:booking) }

  before do
    booking.user = customer
    customer.booking = booking
    customer.save
    booking.save
  end

  describe 'POST checkin' do
    subject { post :create, params: { id: booking.id, room_id: room.id, booking: { user_id: customer.id } } }

    it 'redirects_to rooms_path' do
      expect(subject).to redirect_to(rooms_url)
    end
    it 'cannot rent a room' do
      subject
      expect(flash[:alert]).to match(/Você não pode alugar mais de um quarto.*/)
    end
  end

  describe 'POST checkin sem booking' do
    let(:another_room) { create(:room) }
    let(:another_booking) { create(:booking) }
    before do
      another_booking.user = create(:user)
      customer.booking = nil
      customer.save
      another_booking.save
    end

    subject { post :create, params: { room_id: another_room.id, booking: { user_id: customer.id } } }

    it 'redirects_to rooms_path' do
      expect(subject).to redirect_to(rooms_url)
    end
    it 'can rent a room' do
      subject
      expect(flash[:notice]).to match(/Checkin feito com sucesso.*/)
    end
  end

  describe 'DELETE checkout' do
    subject { post :destroy, params: { id: booking.id, room_id: room.id, booking: { user_id: customer.id } } }

    it 'redirects_to rooms_path' do
      expect(subject).to redirect_to(rooms_url)
    end
  end
end
