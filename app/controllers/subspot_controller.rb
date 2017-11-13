class SubspotController < ApplicationController
  def index
    @subspots = Spot.get_sub_spot(subspot_params[:id])
    @subspots = @subspots.map do |subspot|
      @tagList = Spot.get_tag(subspot.id).pluck :tag_name
      {
        id: subspot.id,
        imagePath: subspot.image_url,
        spotName: subspot.spot_name,
        tagList: @tagList
      }
    end
    @spotsJson = {
      subSpotList: @subspots,
      subSpotNum: @subspots.length
    }
    render json: @subspots
  end


  private
  # リクエストパラメータのバリデーション
  def subspot_params
    params.permit(:id, :from, :to)
  end
end
