require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { away_game_points: @game.away_game_points, away_score: @game.away_score, away_team_id: @game.away_team_id, bye_id: @game.bye_id, date: @game.date, home_game_points: @game.home_game_points, home_score: @game.home_score, home_team_id: @game.home_team_id, round: @game.round, score_disparity: @game.score_disparity, venue_id: @game.venue_id, year: @game.year }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { away_game_points: @game.away_game_points, away_score: @game.away_score, away_team_id: @game.away_team_id, bye_id: @game.bye_id, date: @game.date, home_game_points: @game.home_game_points, home_score: @game.home_score, home_team_id: @game.home_team_id, round: @game.round, score_disparity: @game.score_disparity, venue_id: @game.venue_id, year: @game.year }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
