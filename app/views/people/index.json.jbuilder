json.array!(@people) do |person|
  json.extract! person, :name, :weight
  json.url person_url(person, format: :json)
end
