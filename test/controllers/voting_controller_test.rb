require 'test_helper'

class VotingControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get voting_show_url
    assert_response :success
  end

  test "should get vote" do
    get voting_vote_url
    assert_response :success
  end

end
