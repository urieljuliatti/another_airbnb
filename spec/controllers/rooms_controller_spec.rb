# frozen_string_literal: true

require 'rails_helper'
require 'support/devise'

RSpec.describe RoomsController, type: :controller do

  login_admin

  describe 'GET index' do
    it 'assigns @rooms' do
      rooms = create_list :room, 3
      get :index
      expect(assigns(:rooms)).to eq(rooms)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
