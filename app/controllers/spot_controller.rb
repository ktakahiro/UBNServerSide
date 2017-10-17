class SpotController < ApplicationController
  def index
    @users = spot_params[:date]
    render json: @users
  end


  private
  # リクエストパラメータのバリデーション
  def spot_params
    params.permit(:date, :place, :female, :male, :from, :to)
  end
end
