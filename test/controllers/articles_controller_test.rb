require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
    test "smoke test on index" do
        get :index

        assert_response :success
        assert_not_nil assigns(:articles)
    end
end
