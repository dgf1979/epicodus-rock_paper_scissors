require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Rock, Paper, Scissors Integration', {:type => :feature}) do
  it('return the winning choice') do
    visit('/')
    fill_in('player', :with => 'rock')
    fill_in('opponent', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content('Rock Wins!')
  end
end
