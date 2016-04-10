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

  context 'fighters have been added' do
    before do
      Fighter.create(name: 'Meatball')
    end

    scenario 'displays fighters' do
      visit '/fighters/show'
      expect(page).to have_content 'Meatball'
      expect(page).not_to have_content 'No fighters yet'
    end
  end
end