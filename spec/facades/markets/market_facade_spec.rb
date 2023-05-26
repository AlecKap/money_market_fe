require 'rails_helper'

RSpec.describe MarketFacade do
  describe 'markets' do
    it 'returns a collection of all markets', :vcr do
      market_facade = MarketFacade.new
      market = market_facade.markets.first

      expect(market_facade.markets).to be_an(Array)
      expect(market).to be_a(Market)
      expect(market.id).to be_a(String)
      expect(market.name).to be_a(String)
      expect(market.city).to be_a(String)
      expect(market.county).to be_a(String)
      expect(market.state).to be_a(String)
      expect(market.zip).to be_a(String)
      expect(market.vendor_count).to be_an(Integer)
    end
  end

  describe 'market' do
    it 'returns info on one market', :vcr do
      market_facade = MarketFacade.new(322474)
      market = market_facade.market

      expect(market).to be_a(Market)
      expect(market.id).to be_a(String)
      expect(market.name).to be_a(String)
      expect(market.city).to be_a(String)
      expect(market.county).to be_a(String)
      expect(market.state).to be_a(String)
      expect(market.zip).to be_a(String)
      expect(market.vendor_count).to be_an(Integer)
    end
  end
end
