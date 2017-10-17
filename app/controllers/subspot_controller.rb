class SubspotController < ApplicationController
  def index
    @users = subspot_params[:id]
    render json: @users
  end


  private
  # リクエストパラメータのバリデーション
  def subspot_params
    params.permit(:id, :from, :to)
  end
end
