require 'rails_helper'
require_relative 'sign_in_helper'

feature 'reviewing' do
  before { Restaurant.create name: 'KFC' }

  scenario 'allows users to leave a review using a form when signed in' do
    sign_in
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in 'Thoughts', with: 'so so'
    select '3', from: 'Rating'
    click_button 'Leave Review'

    expect(current_path).to eq '/restaurants'
    expect(page).to have_content('so so')
  end

  scenario 'user cannot leave a review when not signed in' do
    visit '/restaurants'
    click_link 'Review KFC'
    expect(page).to have_content('Log in')
    expect(page).not_to have_content('KFC')
  end
end
