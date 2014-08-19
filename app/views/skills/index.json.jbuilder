json.array!(@skills) do |skill|
  json.extract! skill, :id, :title, :source, :description, :track, :level
  json.url skill_url(skill, format: :json)
end
