class SubspotController < ApplicationController
  def index
    @tags = ["tag1", "tag2"]
    @spot = {
      id: 1,
      imagePath: "www.example.com",
      spotName: "example",
      tagList: @tags
    }
    @spot1 = {
      id: 1,
      imagePath: "www.example.com",
      spotName: "example",
      tagList: @tags
    }
    @spots = [@spot, @spot1]
    @spotsJson = {
      subSpotList: @spots,
      subSpotNum: 2
    }
    render json: @spotsJson
  end


  private
  # リクエストパラメータのバリデーション
  def subspot_params
    params.permit(:id, :from, :to)
  end
end
