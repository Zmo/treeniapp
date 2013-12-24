json.array!(@results) do |result|
  json.extract! result, :workout_id, :move_id, :user_id, :amount, :unit
  json.url result_url(result, format: :json)
end
