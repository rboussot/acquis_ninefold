json.array!(@genres) do |genre|
  json.extract! genre, :id, :titre_genre
  json.url genre_url(genre, format: :json)
end
