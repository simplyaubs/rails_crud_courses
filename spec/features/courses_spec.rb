require 'spec_helper'

feature 'CRUD courses' do
  scenario 'User can create a list of courses' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a course'
    fill_in 'Name', with: 'Ruby'
    fill_in 'Level', with: 'Beginner'
    click_on 'Add course'
    expect(page).to have_content 'Ruby'
    expect(page).to have_content 'Beginner'
  end
end