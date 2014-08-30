class Mouvement < ActiveRecord::Base
	has_many :oeuvres, foreign_key: "mouvement_id"
end
