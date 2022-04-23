require 'rails_helper'

RSpec.describe 'Recipe Index', type: :feature do
  before :each do
    one = User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')

    Recipe.create(name: "Moi Moi", preparation_time: "1 Hours", cooking_time: "20 hours", description: "Lorem, ipsum.", user: one)
    Recipe.create(name: "Roast", preparation_time: "1 Hours", cooking_time: "50 hours", description: "Lorem ipsum.", user: one)
    Recipe.create(name: "Fried Chicken", preparation_time: "2 Hours", cooking_time: "25 hours", description: "Lorem, ipsum", user: one)


    visit '/users/sign_in'
    fill_in 'Email', with: 'user1@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end
  it 'Check content on the page' do

    visit "/recipes"

    expect(page).to have_content("Moi Moi")
    expect(page).to have_content("Roast")
    expect(page).to have_content("Fried Chicken")
    expect(page).to have_content("Lorem, ipsum.")
  end
end