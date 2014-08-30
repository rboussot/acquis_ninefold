json.array!(@userlitts) do |userlitt|
  json.extract! userlitt, :id, :oeuvre_id, :user_id
  json.url userlitt_url(userlitt, format: :json)
end
