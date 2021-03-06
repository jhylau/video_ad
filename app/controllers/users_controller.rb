class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.order("id ASC")
  end

  def show
    @user = User.find(params[:id])
    @holdings = Holding.by_user(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :password, :cash_balance)
  end
end