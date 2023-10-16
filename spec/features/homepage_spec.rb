require 'rails_helper'

feature 'Visitor open homepage' do
  scenario 'successfully' do
    visit root_path
    
    expect(page).to have_content('Conferência Web')
  end
end