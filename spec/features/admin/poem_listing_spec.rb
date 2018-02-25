require 'rails_helper'

feature 'Admin poem listing' do

  scenario 'admin can view all poems' do
    poem1 = create(:poem)
    poem2 = create(:poem)
    puts poem1.inspect
    puts poem2.inspect
  end

end
