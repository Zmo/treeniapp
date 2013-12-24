require 'test_helper'

class MoveMusclesControllerTest < ActionController::TestCase
  setup do
    @move_muscle = move_muscles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:move_muscles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create move_muscle" do
    assert_difference('MoveMuscle.count') do
      post :create, move_muscle: { move_id: @move_muscle.move_id, muscle_id: @move_muscle.muscle_id }
    end

    assert_redirected_to move_muscle_path(assigns(:move_muscle))
  end

  test "should show move_muscle" do
    get :show, id: @move_muscle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @move_muscle
    assert_response :success
  end

  test "should update move_muscle" do
    patch :update, id: @move_muscle, move_muscle: { move_id: @move_muscle.move_id, muscle_id: @move_muscle.muscle_id }
    assert_redirected_to move_muscle_path(assigns(:move_muscle))
  end

  test "should destroy move_muscle" do
    assert_difference('MoveMuscle.count', -1) do
      delete :destroy, id: @move_muscle
    end

    assert_redirected_to move_muscles_path
  end
end
