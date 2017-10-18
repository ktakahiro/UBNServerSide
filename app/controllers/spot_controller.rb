class SpotController < ApplicationController
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
      spotList: @spots,
      spotNum: 2
    }
    render json: @spotsJson
  end


  private
  # リクエストパラメータのバリデーション
  def spot_params
    params.permit(:date, :place, :female, :male, :from, :to)
  end
end
