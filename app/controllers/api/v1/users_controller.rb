class Api::V1::UsersController < ApplicationController
  def index
    @users = user_params[:addr1]
    render json: @users
  end


  private
  # リクエストパラメータのバリデーション
  def user_params
    params.permit(:addr1)
  end
end
