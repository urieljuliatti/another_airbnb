# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET home' do
    it 'assigns @rooms' do
      rooms = create_list :room, 3
      get :home
      expect(assigns(:rooms)).to eq(rooms)
    end

    it 'renders the gome template' do
      get :home
      expect(response).to render_template('home')
    end
  end
end
