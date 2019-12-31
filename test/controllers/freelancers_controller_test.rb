require 'test_helper'

class FreelancersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get freelancers_show_url
    assert_response :success
  end

end
