class MarketMoneyService
  def all_markets
    get_url('/api/v0/markets')
  end

  def one_market(market_id)
    get_url("/api/v0/markets/#{market_id}")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://localhost:3000')
  end
end
