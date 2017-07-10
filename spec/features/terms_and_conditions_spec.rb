require 'rails_helper'

describe 'terms and conditions' do
  it 'shows information terms and conditions' do
    visit root_url
    click_on 'Terms and conditions'

    expect(page).to have_content 'Set of rules and guidelines that a user must agree to in order to use website or mobile app'
  end
end
