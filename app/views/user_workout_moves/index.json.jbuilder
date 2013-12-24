json.array!(@user_workout_moves) do |user_workout_move|
  json.extract! user_workout_move, :userworkout_id, :move_id, :repetitions
  json.url user_workout_move_url(user_workout_move, format: :json)
end
