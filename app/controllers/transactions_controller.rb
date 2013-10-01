class TransactionsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  private

  def transaction_params
    params.require(:transaction).permit(:id, :open_at, :open_price,
                                        :close_at, :close_price,
                                        :user_id, :holding_id)
  end
end