require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  test 'main spot' do
    check = 1
    main_spot = Spot.get_main_spot(Time.now, '新宿', 5)

    main_spot.each do |spot|
      # Rails.logger.debug spot.to_yaml
      Rails.logger.debug spot.inspect
      Rails.logger.debug spot.inspect
      check = 0 unless spot.spot_name.eql?('カフェ')
    end
    assert_equal 1, check
  end

  test 'sub spot' do
    check = 1
    sub_spot = Spot.get_sub_spot(1)
    sub_spot.each do |spot|
      Rails.logger.debug spot.inspect
      # Rails.logger.debug spot.to_yaml
      check = 0 unless spot.spot_name.eql?('カフェ')
    end
    assert_equal 1, check
  end

  test 'get tag' do
    check = 1
    tags = Spot.get_tag(1)
    tags.each do |tag|
      Rails.logger.debug tag.inspect
      # Rails.logger.debug spot.to_yaml
      check = 0 unless tag.tag_name.eql?('静か')
    end
    assert_equal 1, check
  end
end
