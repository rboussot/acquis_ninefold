class Userlitt < ActiveRecord::Base
	belongs_to :oeuvre, foreign_key: "oeuvre_id"
	belongs_to :user, foreign_key: "user_id"

	validates_presence_of :oeuvre_id, :on => :create
	validates_presence_of :user_id, :on => :create
	validates_uniqueness_of :oeuvre_id, scope: [:user_id]

end
