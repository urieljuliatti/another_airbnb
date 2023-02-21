# frozen_string_literal: true

require 'rails_helper'
require 'support/devise'

RSpec.describe Admin::RoomsController, type: :controller do
  login_admin

  let(:room_attributes) { attributes_for :room }

  describe 'POST create' do
    subject { post :create, params: { room: room_attributes } }

    it 'redirects_to rooms_path' do
      expect(subject).to redirect_to(rooms_url)
    end
  end
end
