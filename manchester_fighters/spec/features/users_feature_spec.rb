require 'rails_helper'

feature 'signing up' do

  scenario 'allows user to sign up and register as a fighter' do
    visit '/'
    click_link 'Register as a fighter'
    fill_in 'Email', with: 'a@a.com'
    fill_in 'Password', with: '88888888'
    fill_in 'Password confirmation', with: '88888888'
    fill_in 'Name', with: 'DanH'
    
    fill_in 'Weight', with: '9st'
    fill_in 'Height', with: '6ft'
    click_button 'Sign up'
    expect(current_path).to eq '/'
  end
  
   scenario 'anyone can view all fighters' do
     visit '/'
    click_link 'Register as a fighter'
    fill_in 'Email', with: 'a@a.com'
    fill_in 'Password', with: '88888888'
    fill_in 'Password confirmation', with: '88888888'
    fill_in 'Name', with: 'DanH'
    attach_file "Avatar", Rails.root.to_s + "/spec/asset_specs/photos/water-flea.jpg"
    fill_in 'Weight', with: '9st'
    fill_in 'Height', with: '6ft'
    click_button 'Sign up'
    click_link 'Fighters'
    click_link 'Sign out'
    click_link 'Fighters'
    expect(page).to have_content 'DanH'
    expect(page).to have_selector("img")
  end
  # scenario 'allows user to sign up and view profile' do
  #   visit '/'
  #   click_link 'Sign up'
  #   fill_in 'Email', with: 'test@a.com'
  #   fill_in 'Password', with: '88888888'
  #   fill_in 'Password confirmation', with: '88888888'
  #   fill_in 'Username', with: 'DanH'
  #   fill_in 'Hometown', with: 'London'
  #   fill_in 'First name', with: 'Dan'
  #   fill_in 'Last name', with: 'Hash'
  #   click_button 'Sign up'
  #   visit '/profiles/:id/'
  #   expect(page).to have_content 'DanH'
  # endnew_user_registration


end