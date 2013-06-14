require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post :create, school: { big_game: @school.big_game, content: @school.content, division: @school.division, globe_rank: @school.globe_rank, herald_rank: @school.herald_rank, highly_recruited: @school.highly_recruited, latitude: @school.latitude, longitude: @school.longitude, losses: @school.losses, name: @school.name, pts_against: @school.pts_against, pts_for: @school.pts_for, wins: @school.wins }
    end

    assert_redirected_to school_path(assigns(:school))
  end

  test "should show school" do
    get :show, id: @school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school
    assert_response :success
  end

  test "should update school" do
    put :update, id: @school, school: { big_game: @school.big_game, content: @school.content, division: @school.division, globe_rank: @school.globe_rank, herald_rank: @school.herald_rank, highly_recruited: @school.highly_recruited, latitude: @school.latitude, longitude: @school.longitude, losses: @school.losses, name: @school.name, pts_against: @school.pts_against, pts_for: @school.pts_for, wins: @school.wins }
    assert_redirected_to school_path(assigns(:school))
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete :destroy, id: @school
    end

    assert_redirected_to schools_path
  end
end
