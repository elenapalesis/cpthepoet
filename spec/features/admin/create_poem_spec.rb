require 'rails_helper'

feature 'Admin creates a new poem' do
  scenario 'they see the poem on the index' do
    visit '/admin/poems'

    fill_in 'poem_greek_title', with: 'Titlos Alpha'
    fill_in 'poem_english_title', with: 'Title A'
    fill_in 'poem_greek_body', with: 'A Greek body is a wonderful thing.'
    fill_in 'poem_english_body', with: 'An English body is less sought after.'
    page.check('poem_published')
    click_button 'Create Poem'

    expect(page).to have_selector('li', text: 'Titlos Alpha (Title A)')
    expect(page).to have_selector('p', text: 'Poem successfully created!')
  end
end
