# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:room) }
  end
  describe 'methods' do
    let(:booking) { create :booking}
    
    before do
      allow(booking).to receive(:total_time_at_room).and_return(2.minutes)
      allow(booking).to receive(:order).and_return(60)
    end

    describe 'total_time_at_room' do
      it { expect(booking.total_time_at_room).to eq(120) }
    end

    describe 'order' do
      it { expect(booking.order).to eq (60) }
    end
  end
end
