json.array!(@oeuvres) do |oeuvre|
  json.extract! oeuvre, :id, :titre_oeuvre, :auteur_id, :genre, :mouvement
  json.url oeuvre_url(oeuvre, format: :json)
end
