require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end


  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end
  
#  test "should redirect index when not logged in" do
 #   get :index
  #  assert_redirected_to login_url
  #end

end
