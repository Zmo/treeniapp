require 'test_helper'

class WorkoutMovesControllerTest < ActionController::TestCase
  setup do
    @workout_move = workout_moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_move" do
    assert_difference('WorkoutMove.count') do
      post :create, workout_move: { move_id: @workout_move.move_id, repetitions: @workout_move.repetitions, workout_id: @workout_move.workout_id }
    end

    assert_redirected_to workout_move_path(assigns(:workout_move))
  end

  test "should show workout_move" do
    get :show, id: @workout_move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_move
    assert_response :success
  end

  test "should update workout_move" do
    patch :update, id: @workout_move, workout_move: { move_id: @workout_move.move_id, repetitions: @workout_move.repetitions, workout_id: @workout_move.workout_id }
    assert_redirected_to workout_move_path(assigns(:workout_move))
  end

  test "should destroy workout_move" do
    assert_difference('WorkoutMove.count', -1) do
      delete :destroy, id: @workout_move
    end

    assert_redirected_to workout_moves_path
  end
end
