class Genre < ActiveRecord::Base
	has_many :oeuvres, foreign_key: "id"
end
