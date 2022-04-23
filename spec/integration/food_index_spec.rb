require 'rails_helper'

RSpec.describe 'Food Index', type: :feature do
  before :each do
    one = User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')

    Food.create(name: 'Akara', measurement_unit: 'g', price: 3.5, user: one)
    Food.create(name: 'ChinChin', measurement_unit: 'g', price: 3.5, user: one)

    visit '/users/sign_in'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end
  it 'Check content on the page' do
    visit '/foods'

    expect(page).to have_content('Akara')
    expect(page).to have_content('ChinChin')
    expect(page).to have_content('g')
    expect(page).to have_content(3.5)
  end
end
