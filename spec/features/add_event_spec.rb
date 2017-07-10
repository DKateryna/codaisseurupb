require 'rails_helper'

describe 'The creation of a new event' do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit events_url
    click_on 'Add new event'
    # save_and_open_page
  end

  context 'can create event' do
    it 'checks all fields' do
      fill_in 'Name', with: 'Dirt maniacs'
      fill_in 'Description', with: 'One of the most spectacular obstacles in the Netherlands'
      fill_in 'Price', with: 1
      check 'Create this Event?'
      click_on 'Save'
      expect(page).to have_content 'Event created'
    end
  end
end
