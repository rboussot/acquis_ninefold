class MesCoursController < ApplicationController
before_action :check_session

def check_session
	if current_user == nil
	  redirect_to new_session_path, notice: 'Connectez-vous pour voir votre espace.'
	end
end

  def litterature
  	@userlitts = Userlitt.where(user_id: current_user)
  end

  def methode
  end

  def grammaire
  end

  def stylistique
  end
end
