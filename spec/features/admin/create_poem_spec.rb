require 'rails_helper'

feature 'Admin creates a new poem' do
  scenario 'they see the poem on the index' do
    visit '/admin/poems'

    fill_in 'greek_title', with: 'Titlos Alpha'
    fill_in 'english_title', with: 'Title A'
    fill_in 'greek_body', with: 'A Greek body is a wonderful thing.'
    fill_in 'english_body', with: 'An English body is less sought after.'
    page.check('publish')
    click_button 'create_poem'

    expect(page).to have_selector('li', text: 'Titlos Alpha (Title A)')
  end
end
