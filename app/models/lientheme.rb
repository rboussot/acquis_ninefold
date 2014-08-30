class Lientheme < ActiveRecord::Base
	belongs_to :oeuvre, foreign_key: "oeuvre_id"
	belongs_to :theme, foreign_key: "theme_id"
end
