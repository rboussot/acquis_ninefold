class BibliothequeController < ApplicationController

  def parniveau
  	@oeuvres = Oeuvre.all
  	@passages = Passage.all
  	@themes = Theme.all.order(:niveau)
  	@lienthemes = Lientheme.all
  	@niveau = Theme.all
  end

  def parsiecle
  	@oeuvres = Oeuvre.all.order(:date)
  end

  def parauteur
    @auteurs = Auteur.all.order(:nom_entier)
      if params['auteur'] != nil
      @auteur = Auteur.where(nom_entier: params['auteur'])
      @oeuvres = Oeuvre.where(auteur_id: @auteur)
      else
      @oeuvres = Oeuvre.all.order(:date)  
      end
    @lienthemes = Lientheme.all
  end

  def methode
  end

  def grammaire
  end

  def stylistique
  end

  def nouveautes
    @oeuvres = Oeuvre.limit(5).order('updated_at desc').reverse
  end

end
