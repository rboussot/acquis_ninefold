class MouvementsController < ApplicationController
  before_action :set_mouvement, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate
  # GET /mouvements
  # GET /mouvements.json
  def index
    @mouvements = Mouvement.all
  end

  # GET /mouvements/1
  # GET /mouvements/1.json
  def show
  end

  # GET /mouvements/new
  def new
    @mouvement = Mouvement.new
  end

  # GET /mouvements/1/edit
  def edit
  end

  # POST /mouvements
  # POST /mouvements.json
  def create
    @mouvement = Mouvement.new(mouvement_params)

    respond_to do |format|
      if @mouvement.save
        format.html { redirect_to mouvements_url, notice: 'Mouvement was successfully created.' }
        format.json { render :show, status: :created, location: @mouvement }
      else
        format.html { render :new }
        format.json { render json: @mouvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mouvements/1
  # PATCH/PUT /mouvements/1.json
  def update
    respond_to do |format|
      if @mouvement.update(mouvement_params)
        format.html { redirect_to mouvements_url, notice: 'Mouvement was successfully updated.' }
        format.json { render :show, status: :ok, location: @mouvement }
      else
        format.html { render :edit }
        format.json { render json: @mouvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mouvements/1
  # DELETE /mouvements/1.json
  def destroy
    @mouvement.destroy
    respond_to do |format|
      format.html { redirect_to mouvements_url, notice: 'Mouvement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mouvement
      @mouvement = Mouvement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mouvement_params
      params.require(:mouvement).permit(:titre_mouvement)
    end
end
