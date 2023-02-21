# frozen_string_literal: true

require 'rails_helper'

describe 'pages/home.html.erb' do

  it 'displays all the rooms' do
    assign(:rooms, [
             Room.create!(title: 'Room #1', price: 30, body: 'Room #1 body'),
             Room.create!(title: 'Room #2', price: 15, body: 'Room #2 body')
           ])

    render

    expect(rendered).to match(/Room #1/)
    expect(rendered).to match(/Room #2/)
  end
end
