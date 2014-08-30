json.array!(@themes) do |theme|
  json.extract! theme, :id, :titre_theme, :niveau
  json.url theme_url(theme, format: :json)
end
