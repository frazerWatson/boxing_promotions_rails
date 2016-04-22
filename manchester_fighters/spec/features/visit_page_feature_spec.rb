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

  scenario 'book a fighter' do
    visit '/'
    page.find(".actions").click
    expect(current_path).to eq '/contacts'
    expect(page).to have_content 'Paul Smith'
  end

  scenario 'read about' do
    visit '/'
    click_link 'About'
    expect(current_path).to eq '/about'
    expect(page).to have_content 'Semi-pro boxing'
  end

  scenario 'view event management page' do
    visit '/'
    click_link 'Event management'
    expect(current_path).to eq '/event_management'
    expect(page).to have_content 'Interested in putting on a show?'
  end
  
  scenario 'view contact details' do
    visit '/'
    click_link 'Contact'
    expect(current_path).to eq '/contacts'
    expect(page).to have_content 'Paul Smith'
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