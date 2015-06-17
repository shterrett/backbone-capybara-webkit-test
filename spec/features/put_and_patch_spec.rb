require 'spec_helper'

feature 'PUT vs PATCH', type: :feature, js: true do
  before do
    User.destroy_all
  end

  scenario 'PUT updates a model' do
    user = User.create(name: 'Yoda', email: 'yoda@jedi.com')
    visit '/'
    click_link user.name
    fill_in :name, with: 'Master Yoda'
    click_button 'Put'
    expect(page).to have_link('Master Yoda')
  end

  scenario 'PATCH updates a model' do
    user = User.create(name: 'Yoda', email: 'yoda@jedi.com')
    visit '/'
    click_link user.name
    fill_in :name, with: 'Master Yoda'
    click_button 'Patch'
    expect(page).to have_link('Master Yoda')
  end
end
