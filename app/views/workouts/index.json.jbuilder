json.array!(@workouts) do |workout|
  json.extract! workout, :title, :muscles, :person_id
  json.url workout_url(workout, format: :json)
end
