json.array!(@passages) do |passage|
  json.extract! passage, :id, :oeuvre_id, :titre_passage
  json.url passage_url(passage, format: :json)
end
