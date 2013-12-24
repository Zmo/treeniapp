json.array!(@workout_moves) do |workout_move|
  json.extract! workout_move, :workout_id, :move_id, :repetitions
  json.url workout_move_url(workout_move, format: :json)
end
