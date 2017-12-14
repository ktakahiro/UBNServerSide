class SpotController < ApplicationController
  def index
    @mainspots = Spot.get_main_spot(spot_params[:date], params[:place], spot_params[:peopleNum], params[:mainTag], spot_params[:query])
    @mainspots = @mainspots.map do |mainspot|
      @tagList = Spot.get_tag(mainspot.id).pluck :tag_name
      {
        id: mainspot.id,
        imagePath: mainspot.image_url,
        spotName: mainspot.spot_name,
        tagList: @tagList,
        mainTag: MainTag.find(mainspot.main_tag_id).name,
        url: mainspot.hp_url
      }
    end
    @spotsJson = {
      spotList: @mainspots,
      spotNum: @mainspots.length
    }
    render json: @mainspots
  end


  private
  # リクエストパラメータのバリデーション
  def spot_params
    params.permit(:date, :place, :peopleNum, :from, :to, :query)
  end
end
