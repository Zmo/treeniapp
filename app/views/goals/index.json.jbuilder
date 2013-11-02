json.array!(@goals) do |goal|
  json.extract! goal, :name, :value, :unit, :person_id
  json.url goal_url(goal, format: :json)
end
