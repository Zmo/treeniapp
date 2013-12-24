json.array!(@moves) do |move|
  json.extract! move, :name
  json.url move_url(move, format: :json)
end
