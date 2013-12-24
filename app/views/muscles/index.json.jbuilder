json.array!(@muscles) do |muscle|
  json.extract! muscle, :name
  json.url muscle_url(muscle, format: :json)
end
