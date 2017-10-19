class DetailspotController < ApplicationController
  def index
    @spot = {
      id: 1,
      imagePath: "www.example.com",
      latitude: 43.7628257,
      longitude: 43.7628257,
      detail: "it is really really example.",
      tagList: {tag1: "tag1", tag2: "tag2"}
    }
    render json: @spot
  end


  private
  # リクエストパラメータのバリデーション
  def detailspot_params
    params.permit(:id)
  end
end
