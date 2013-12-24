json.array!(@user_workouts) do |user_workout|
  json.extract! user_workout, :title, :type, :user_id
  json.url user_workout_url(user_workout, format: :json)
end
