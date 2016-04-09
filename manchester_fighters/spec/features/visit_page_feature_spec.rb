require 'rails_helper'

feature 'Visit page' do
  scenario 'page has header' do
    visit '/'
    expect(page).to have_content 'Manchester Fighters'
  end
end