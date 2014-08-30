json.array!(@auteurs) do |auteur|
  json.extract! auteur, :id, :prenom, :nom, :nom_entier, :date_n, :date_m
  json.url auteur_url(auteur, format: :json)
end
