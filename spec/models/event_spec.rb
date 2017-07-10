require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it 'is invalid without name' do
      event = Event.new(name: '')
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it { is_expected.to validate_presence_of(:active) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe '#bargain?' do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it 'returns true if the price is smaller than 30 EUR' do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe '.order_by_price' do
    let!(:event1) { create :evetn, price: 100 }
    let!(:event2) { create :evetn, price: 200 }
    let!(:event3) { create :evetn, price: 50 }

    it 'returns a sorted array of events by prices' do
      expect(Event.order_by_price).to eq([event3, event1, event2])
    end
  end
end
