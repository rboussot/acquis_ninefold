class AccueilController < ApplicationController
  def index
    @cours = Passage.count
  end

  def visite
  end

  def bio
  end

  def connexion
  end

  def inscription
  end
end
