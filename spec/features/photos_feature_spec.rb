require 'rails_helper'

feature 'photos' do

  context 'no photos have been added' do

    scenario 'should have a prompt to add a photo' do
      visit '/photos'
      expect(page).to have_content 'No photos yet'
      expect(page).to have_content 'Add photo'
    end

  end

  context 'photos have been added' do

    before do
      Photo.create(caption: 'a nice view')
    end

    scenario 'display photos' do
      visit '/photos'
      expect(page).to have_content('a nice view')
      expect(page).not_to have_content('No photos yet')
    end

  end

  context 'creating photos' do

    scenario 'prompts user to fill out a form, then displays the photo' do
      visit '/photos'
      click_link 'Add photo'
      fill_in 'Caption', with: 'a nice view'
      click_button 'Create Photo'
      expect(page).to have_content 'a nice view'
      expect(current_path).to eq '/photos'
    end

  end

end
