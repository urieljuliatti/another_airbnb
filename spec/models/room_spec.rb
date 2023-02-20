require 'rails_helper'

RSpec.describe Room, type: :model do
  subject(:room) { FactoryBot.build :room }

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:title) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:price) }
  end
end
