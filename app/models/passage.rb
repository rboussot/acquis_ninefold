class Passage < ActiveRecord::Base
	belongs_to :oeuvre, foreign_key: "oeuvre_id"
end
