require 'rails_helper'

feature 'Visit page' do
  scenario 'page has header' do
    visit '/'
    expect(page).to have_content 'Manchester Fighters'
  end

  scenario 'page has link' do
    visit '/'
    click_link 'Fighters'
    expect(page).to have_content 'No fighters yet'
  end
end