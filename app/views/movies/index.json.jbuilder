json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :link, :video, :tag, :description
  json.url movie_url(movie, format: :json)
end
