require 'rails_helper'

RSpec.describe MarketMoneyService do
  context 'class methods' do
    context 'markets' do
      it 'returns market data', :vcr do
        markets = MarketMoneyService.new.all_markets
        expect(markets).to be_a(Hash)
        expect(markets[:data]).to be_a(Array)

        market = markets[:data].first

        expect(market).to be_a(Hash)
        expect(market).to have_key(:id)
        expect(market[:id]).to be_an(String)
        expect(market).to have_key(:type)
        expect(market[:type]).to be_an(String)
        expect(market).to have_key(:attributes)
        expect(market[:attributes]).to be_an(Hash)

        market_atrb = market[:attributes]

        expect(market_atrb).to have_key(:name)
        expect(market_atrb).to have_key(:street)
        expect(market_atrb).to have_key(:city)
        expect(market_atrb).to have_key(:county)
        expect(market_atrb).to have_key(:state)
        expect(market_atrb).to have_key(:zip)
        expect(market_atrb).to have_key(:lat)
        expect(market_atrb).to have_key(:lon)
        expect(market_atrb).to have_key(:vendor_count)

        expect(market_atrb[:name]).to be_a(String)
        expect(market_atrb[:street]).to be_a(String)
        expect(market_atrb[:city]).to be_a(String)
        expect(market_atrb[:county]).to be_a(String)
        expect(market_atrb[:state]).to be_an(String)
        expect(market_atrb[:zip]).to be_an(String)
        expect(market_atrb[:lat]).to be_an(String)
        expect(market_atrb[:lon]).to be_an(String)
        expect(market_atrb[:vendor_count]).to be_an(Integer)
      end

      it 'returns data on one market', :vcr do
        market = MarketMoneyService.new.one_market(322474)

        expect(market).to be_a(Hash)
        expect(market[:data]).to be_a(Hash)

        market = market[:data]

        expect(market).to be_a(Hash)
        expect(market).to have_key(:id)
        expect(market[:id]).to be_an(String)
        expect(market).to have_key(:type)
        expect(market[:type]).to be_an(String)
        expect(market).to have_key(:attributes)
        expect(market[:attributes]).to be_an(Hash)

        market_atrb = market[:attributes]

        expect(market_atrb).to have_key(:name)
        expect(market_atrb).to have_key(:street)
        expect(market_atrb).to have_key(:city)
        expect(market_atrb).to have_key(:county)
        expect(market_atrb).to have_key(:state)
        expect(market_atrb).to have_key(:zip)
        expect(market_atrb).to have_key(:lat)
        expect(market_atrb).to have_key(:lon)
        expect(market_atrb).to have_key(:vendor_count)

        expect(market_atrb[:name]).to be_a(String)
        expect(market_atrb[:street]).to be_a(String)
        expect(market_atrb[:city]).to be_a(String)
        expect(market_atrb[:county]).to be_a(String)
        expect(market_atrb[:state]).to be_an(String)
        expect(market_atrb[:zip]).to be_an(String)
        expect(market_atrb[:lat]).to be_an(String)
        expect(market_atrb[:lon]).to be_an(String)
        expect(market_atrb[:vendor_count]).to be_an(Integer)
      end
    end
  end
end
