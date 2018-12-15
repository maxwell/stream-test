require 'rails_helper'


feature "adding a note" do

  scenario 'i can add a note on the main page' do
    visit '/'

    within('#new_note') do
      fill_in 'note_text', with: 'my first note'
      click_button 'Save'
    end

    within('.notes') do
      expect(page).to have_content ('my first note')
    end
  end
end
