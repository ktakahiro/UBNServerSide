class DetailspotController < ApplicationController
  def index
    @users = detailspot_params[:id]
    render json: @users
  end


  private
  # リクエストパラメータのバリデーション
  def detailspot_params
    params.permit(:id)
  end
end
