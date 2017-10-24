require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  test 'main spot' do
    check = 1
    main_spot = Spot.get_main_spot(Time.now, '新宿', 9)

    main_spot.each do |spot|
      # Rails.logger.debug spot.to_yaml
      Rails.logger.debug spot.inspect
    end
    assert_equal 1, check
  end

  test 'sub spot' do
    check = 1
    sub_spot = Spot.get_sub_spot(1)

    sub_spot.each do |spot|
      Rails.logger.debug spot.to_yaml
      # Rails.logger.debug spot.inspect
    end
    assert_equal 1, check
  end
end
