require 'rails_helper'

RSpec.describe 'Markets Index Page' do
  describe 'As a visitor, When I visit the markets index page' do
    before :each do
      visit markets_path
      @market_facade = MarketFacade.new.markets
    end

    it 'I see all markets listed with their name, city and state', :vcr do
      @market_facade[0..10].each do |market|
        within "#market_#{market.id}" do
          expect(page).to have_content(market.name)
          expect(page).to have_content(market.city)
          expect(page).to have_content(market.state)
          expect(page).to have_content(market.vendor_count)
        end
      end
    end

    it 'I see a button for each market that when clicked takes me to that markets show page', :vcr do
      market = @market_facade.first
      within "#market_#{market.id}" do
        expect(page).to have_button('More Info')

        click_button 'More Info'

        expect(current_path).to eq(market_path(market.id))
      end
    end
  end
end