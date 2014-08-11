json.array!(@listings) do |listing|
  json.extract! listing, :id, :jobtitle, :description, :contactem, :compensation, :skills
  json.url listing_url(listing, format: :json)
end
