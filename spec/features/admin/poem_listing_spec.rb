require 'rails_helper'

feature 'Admin poem listing' do

  scenario 'admin can view all poems' do
    poem1 = create(:poem, english_title: 'English Title 1', greek_title: 'Greek Title 1')
    poem2 = create(:poem, english_title: 'English Title 2', greek_title: 'Greek Title 2')

    visit '/admin/poems'

    expect(page).to have_selector('li', text: 'Greek Title 1 (English Title 1)')
    expect(page).to have_selector('li', text: 'Greek Title 2 (English Title 2)')
  end

end
