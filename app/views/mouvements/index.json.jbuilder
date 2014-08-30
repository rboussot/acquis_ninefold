json.array!(@mouvements) do |mouvement|
  json.extract! mouvement, :id, :titre_mouvement
  json.url mouvement_url(mouvement, format: :json)
end
