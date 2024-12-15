require 'capybara/rspec'

Capybara.default_driver=:selenium_headless

describe "signing process", type: :feature do
  before :each do
  end
  it 'signs on' do
    visit 'https://www.google.com'
  end
end