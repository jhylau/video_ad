class HoldingsController < ApplicationController
  before_filter :authenticate_user!


  private

  def holdings_params
    params.require(:holdings).permit(:id, :ticker, :quantity, :avg_buy_price, :avg_sell_price)
  end
end