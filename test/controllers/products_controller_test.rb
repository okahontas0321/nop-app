require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get card" do
    get products_card_url
    assert_response :success
  end

end
