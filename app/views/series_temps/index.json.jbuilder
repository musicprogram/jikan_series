json.array!(@series_temps) do |series_temp|
  json.extract! series_temp, :id, :name
  json.url series_temp_url(series_temp, format: :json)
end
