class DetailspotController < ApplicationController
  def index
    @spot = Spot.find(detailspot_params[:id])
    @tag_names = Spot.get_tag(detailspot_params[:id]).pluck :tag_name
    @spot =
    {
      id: @spot.id,
      url: @spot.hp_url,
      imagePath: @spot.image_url,
      spotName: @spot.spot_name,
      latitude: @spot.latitude,
      longitude: @spot.longitude,
      detail: @spot.detail,
      mainTag: MainTag.find(@spot.main_tag_id).name,
      tagList: @tag_names,
      url: @spot.hp_url
    }
    render json: @spot
  end


  private
  # リクエストパラメータのバリデーション
  def detailspot_params
    params.permit(:id)
  end
end
