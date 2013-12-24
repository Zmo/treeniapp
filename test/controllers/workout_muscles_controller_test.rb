require 'test_helper'

class WorkoutMusclesControllerTest < ActionController::TestCase
  setup do
    @workout_muscle = workout_muscles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_muscles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_muscle" do
    assert_difference('WorkoutMuscle.count') do
      post :create, workout_muscle: { muscle_id: @workout_muscle.muscle_id, workout_id: @workout_muscle.workout_id }
    end

    assert_redirected_to workout_muscle_path(assigns(:workout_muscle))
  end

  test "should show workout_muscle" do
    get :show, id: @workout_muscle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_muscle
    assert_response :success
  end

  test "should update workout_muscle" do
    patch :update, id: @workout_muscle, workout_muscle: { muscle_id: @workout_muscle.muscle_id, workout_id: @workout_muscle.workout_id }
    assert_redirected_to workout_muscle_path(assigns(:workout_muscle))
  end

  test "should destroy workout_muscle" do
    assert_difference('WorkoutMuscle.count', -1) do
      delete :destroy, id: @workout_muscle
    end

    assert_redirected_to workout_muscles_path
  end
end
