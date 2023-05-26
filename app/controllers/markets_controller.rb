class MarketsController < ApplicationController
  def index
    @market_facade = MarketFacade.new
  end

  def show
    @market_facade = MarketFacade.new(params[:id])
  end
end
