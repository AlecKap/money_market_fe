class MarketFacade
  def initialize(market_id = nil)
    @market_id = market_id
  end

  def markets
    markets_data.map { |market_attrs| Market.new(market_attrs) }
  end

  def market
    Market.new(market_data)
  end

  private

  def service
    @_service ||= MarketMoneyService.new
  end

  def markets_data
    @_markets_data ||= service.all_markets[:data]
  end

  def market_data
    @_market_data ||= service.one_market(@market_id)[:data]
  end
end
