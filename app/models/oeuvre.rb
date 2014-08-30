class Oeuvre < ActiveRecord::Base
	has_many :users, through: :userlitts
	belongs_to :auteur, foreign_key: "auteur_id"
	has_many :themes, through: :lienthemes
	belongs_to :genre, foreign_key: "genre_id"
	belongs_to :mouvement, foreign_key: "mouvement_id"
end
