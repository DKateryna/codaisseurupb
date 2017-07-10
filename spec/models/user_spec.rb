require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'association with event' do
    it { is_expected.to have_many(:events) }
  end

  describe 'association with profile' do
    it { is_expected.to have_one(:profile) }
  end

  describe 'cascades' do
    let!(:user) { create :user }
    let!(:event) { create :event, user: user }
    it 'deletes associated events' do
      expect { user.destroy }.to change(Event, :count).by(-1)
    end
  end
end
