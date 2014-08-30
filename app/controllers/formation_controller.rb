class FormationController < ApplicationController
  def module
  	@oeuvres = Oeuvre.includes(:auteur).all
  	@oeuvre = Oeuvre.find(params[:formation])
  	@auteur = Auteur.find(@oeuvre.auteur_id)
  	@passages = Passage.all
  		if params['module'] != nil
  		@passage = Passage.find(params['module'])
  		end
  	@auteurs = Auteur.all
  	@lienthemes = Lientheme.where(oeuvre:params['formation'])
    @userlitt = Userlitt.where(user_id:current_user).where(oeuvre_id:params["formation"])
  end

  def destroy
    @userlitt.destroy
    respond_to do |format|
      format.html { redirect_to mes_cours_litt, notice: "Ce cours n'est plus dans votre espace" }
      format.json { head :no_content }
    end
  end
  
end
