json.array!(@lienthemes) do |lientheme|
  json.extract! lientheme, :id, :oeuvre_id, :theme_id
  json.url lientheme_url(lientheme, format: :json)
end
