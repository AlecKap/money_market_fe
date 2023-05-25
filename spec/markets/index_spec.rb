require 'rails_helper'

RSpec.describe 'Markets Index Page' do
  describe 'As a visitor, When I visit the markets index page' do
    before :each do
      vivist markets_path
    end

    it 'I see all markets listed with their name, city and state' do
      within '#'
    end

    it 'I see a button for each market that when clicked takes me to that markets show page' do

    end
  end
end