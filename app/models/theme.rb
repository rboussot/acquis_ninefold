class Theme < ActiveRecord::Base
	has_many :oeuvres, through: :lienthemes
end
