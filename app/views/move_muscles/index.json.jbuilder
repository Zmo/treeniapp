json.array!(@move_muscles) do |move_muscle|
  json.extract! move_muscle, :muscle_id, :move_id
  json.url move_muscle_url(move_muscle, format: :json)
end
