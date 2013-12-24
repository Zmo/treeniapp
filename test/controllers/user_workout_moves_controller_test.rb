require 'test_helper'

class UserWorkoutMovesControllerTest < ActionController::TestCase
  setup do
    @user_workout_move = user_workout_moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_workout_moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_workout_move" do
    assert_difference('UserWorkoutMove.count') do
      post :create, user_workout_move: { move_id: @user_workout_move.move_id, repetitions: @user_workout_move.repetitions, userworkout_id: @user_workout_move.userworkout_id }
    end

    assert_redirected_to user_workout_move_path(assigns(:user_workout_move))
  end

  test "should show user_workout_move" do
    get :show, id: @user_workout_move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_workout_move
    assert_response :success
  end

  test "should update user_workout_move" do
    patch :update, id: @user_workout_move, user_workout_move: { move_id: @user_workout_move.move_id, repetitions: @user_workout_move.repetitions, userworkout_id: @user_workout_move.userworkout_id }
    assert_redirected_to user_workout_move_path(assigns(:user_workout_move))
  end

  test "should destroy user_workout_move" do
    assert_difference('UserWorkoutMove.count', -1) do
      delete :destroy, id: @user_workout_move
    end

    assert_redirected_to user_workout_moves_path
  end
end
